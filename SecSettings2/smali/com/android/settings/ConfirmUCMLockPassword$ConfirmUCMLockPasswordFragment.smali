.class public Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.super Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmUCMLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUCMLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
    }
.end annotation


# instance fields
.field private external:Z

.field private mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mContinueButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMisc:Ljava/lang/String;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mUsingFingerprint:Z

.field private mVendorID:Ljava/lang/String;

.field private mVendorIDView:Landroid/widget/TextView;

.field private mforLockPatternBackupPin:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 126
    iput-boolean v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUsingFingerprint:Z

    .line 131
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 674
    new-instance v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method private checkPin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 485
    .local v0, "length":I
    iget v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMinLength:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMaxLength:I

    if-gt v0, v1, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 488
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPuk(Ljava/lang/String;)Z
    .locals 2
    .param p1, "puk"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 476
    .local v0, "length":I
    iget v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMinLength:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMaxLength:I

    if-gt v0, v1, :cond_0

    .line 477
    const/4 v1, 0x1

    .line 479
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultDetails()I
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    .line 270
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 283
    const v1, 0x7f0e1749

    :goto_0
    return v1

    .line 272
    :pswitch_0
    const v1, 0x7f0e07c6

    goto :goto_0

    .line 274
    :pswitch_1
    const v1, 0x7f0e1747

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0e1744

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 277
    const v1, 0x7f0e1745

    goto :goto_0

    .line 279
    :pswitch_3
    const v1, 0x7f0e1748

    goto :goto_0

    .line 281
    :pswitch_4
    const v1, 0x7f0e174a

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 265
    const v0, 0x7f0e07c4

    return v0
.end method

.method private getVendorID()V
    .locals 6

    .prologue
    .line 288
    const-string v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 289
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v2, :cond_1

    .line 290
    const-string v3, "ConfirmUCMLockPassword"

    const-string v4, "failed to get UCM service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    :try_start_0
    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 298
    const-string v3, "vendorId"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 300
    :cond_2
    const-string v3, "ConfirmUCMLockPassword"

    const-string v4, "NO vendorID info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string v3, "ConfirmUCMLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vendorID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 601
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 607
    new-instance v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 655
    return-void
.end method

.method private handleNext()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const v7, 0x10001

    const v11, 0x7f0e1743

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 492
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 493
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v5, :cond_0

    .line 494
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v5, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 497
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "pin":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 499
    invoke-direct {p0, v4}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->checkPuk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 500
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v6, 0x7f0e173e

    new-array v7, v8, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    .line 559
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->checkPin(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 506
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v6, 0x7f0e173d

    new-array v7, v8, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    goto :goto_0

    .line 511
    :cond_2
    invoke-static {v4}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->next(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    const v6, 0x10004

    if-ne v5, v6, :cond_3

    .line 513
    const-string v5, "ConfirmUCMLockPassword"

    const-string v6, "handle next state DONE  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 515
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, ""

    .line 516
    .local v3, "password":Ljava/lang/String;
    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/UCMHelpUtils;->generatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 517
    const-string v5, "type"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    const-string v5, "password"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 522
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "password":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    const v6, 0x10005

    if-ne v5, v6, :cond_4

    .line 523
    const-string v5, "ConfirmUCMLockPassword"

    const-string v6, "handle next state FAIL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_1
    invoke-static {v9}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    goto :goto_0

    .line 525
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v1

    .line 526
    .local v1, "errorState":I
    sparse-switch v1, :sswitch_data_0

    .line 554
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/settings_ex/UCMHelpUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    goto :goto_1

    .line 528
    :sswitch_0
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v6, 0x7f0e07c9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 531
    :sswitch_1
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 532
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0e1745

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showMISCInfo(Z)V

    goto :goto_2

    .line 535
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0e0c28

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 539
    :sswitch_2
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0e1746

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-direct {p0, v10}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showMISCInfo(Z)V

    goto/16 :goto_2

    .line 543
    :sswitch_3
    const/4 v0, 0x0

    .line 544
    .local v0, "detailsMessage":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    const/high16 v6, 0x10000

    if-ne v5, v6, :cond_6

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v11, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_3
    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 546
    :cond_6
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v11, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 549
    :cond_7
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x10006 -> :sswitch_0
    .end sparse-switch
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 435
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v0

    const v1, 0x10006

    if-eq v0, v1, :cond_2

    .line 437
    const-string v0, "ConfirmUCMLockPassword"

    const-string v1, "resetState set the passwordentry as null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 445
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 688
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 689
    .local v2, "storedQuality":I
    const/high16 v3, 0x40000

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x50000

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x60000

    if-ne v3, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 692
    .local v1, "isAlpha":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e07c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "headerText":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    .line 701
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    :cond_1
    return-void

    .line 689
    .end local v0    # "headerText":Ljava/lang/String;
    .end local v1    # "isAlpha":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 692
    .restart local v1    # "isAlpha":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e07c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showMISCInfo(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 734
    const-string v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMISCInfo called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-eqz p1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 582
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 729
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 731
    return-void

    .line 729
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected authenticationSucceeded()V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 427
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 723
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 371
    const/16 v0, 0x1e

    return v0
.end method

.method public getSettingsConfig()V
    .locals 6

    .prologue
    .line 743
    const-string v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 744
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v2, :cond_0

    .line 745
    const-string v3, "ConfirmUCMLockPassword"

    const-string v4, "failed to get UCM service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    return-void

    .line 749
    :cond_0
    :try_start_0
    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 750
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "miscInfo"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mMisc:Ljava/lang/String;

    .line 751
    const-string v3, "minPinLength"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMinLength:I

    .line 752
    const-string v3, "maxPinLength"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMaxLength:I

    .line 753
    const-string v3, "minPukLength"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMinLength:I

    .line 754
    const-string v3, "maxPukLength"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMaxLength:I

    .line 755
    const-string v3, "ConfirmUCMLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pin puk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMinLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMaxLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMinLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMaxLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v3, "ConfirmUCMLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "misc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mMisc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 758
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 658
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 668
    :goto_0
    return-void

    .line 660
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 664
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 665
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x7f0d0105
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mEffectiveUserId:I

    .line 152
    # setter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mFromPersonalPage:Z
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$002(Z)Z

    .line 153
    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mPersonalPage_isPin:Z
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$102(Z)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.ucscredentialstoragenameuri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forLockPatternBackupPin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 159
    .local v0, "LockPatternBackupPin":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 160
    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    .line 164
    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getSettingsConfig()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getVendorID()V

    .line 169
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState()V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    .line 177
    .local v11, "storedQuality":I
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 178
    .local v10, "intent":Landroid/content/Intent;
    const/4 v12, 0x0

    .line 179
    .local v12, "view":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 180
    const-string v0, "com.android.settings.ConfirmCredentials.showWhenLocked"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->external:Z

    .line 186
    :cond_0
    const v0, 0x7f040064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 187
    const v0, 0x7f0d0105

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0d0106

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    const v0, 0x7f0d0103

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 197
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 198
    const v0, 0x7f0d0102

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0d0129

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0d012d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    const/high16 v0, 0x40000

    if-eq v0, v11, :cond_1

    const/high16 v0, 0x50000

    if-eq v0, v11, :cond_1

    const/high16 v0, 0x60000

    if-ne v0, v11, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 223
    if-eqz v10, :cond_4

    .line 224
    const-string v0, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 226
    .local v9, "headerMessage":Ljava/lang/CharSequence;
    const-string v0, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 228
    .local v8, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 231
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_6

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e1743

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 240
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .end local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    .line 251
    .local v7, "currentType":I
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    if-eqz v1, :cond_9

    .end local v7    # "currentType":I
    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 253
    new-instance v0, Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x10c000e

    invoke-static {v6, v13}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

    .line 257
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x6e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x10c000f

    invoke-static {v6, v13}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 262
    return-object v12

    .line 204
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 234
    .restart local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .restart local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_6
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    const v1, 0x10001

    if-ne v0, v1, :cond_7

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e1743

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 237
    :cond_7
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 247
    .end local v8    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v9    # "headerMessage":Ljava/lang/CharSequence;
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 251
    .restart local v7    # "currentType":I
    :cond_9
    const/16 v7, 0x12

    goto/16 :goto_3
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 712
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext()V

    .line 716
    const/4 v0, 0x1

    .line 718
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUsingFingerprint:Z

    .line 432
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 361
    iput-object v2, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 365
    iput-object v2, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 367
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const v10, 0x7f0e1743

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 376
    invoke-super {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 377
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 378
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 379
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleAttemptLockout(J)V

    .line 384
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState()V

    .line 386
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v3

    .line 387
    .local v3, "errorState":I
    if-nez v3, :cond_3

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, "detailsMessage":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v4

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_1

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v10, v5}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-direct {p0, v9}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showMISCInfo(Z)V

    .line 398
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v2    # "detailsMessage":Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    .line 416
    return-void

    .line 381
    .end local v3    # "errorState":I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    goto :goto_0

    .line 392
    .restart local v2    # "detailsMessage":Ljava/lang/String;
    .restart local v3    # "errorState":I
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v4

    const v5, 0x10001

    if-ne v4, v5, :cond_2

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v10, v5}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-direct {p0, v8}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showMISCInfo(Z)V

    goto :goto_1

    .line 396
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 400
    .end local v2    # "detailsMessage":Ljava/lang/String;
    :cond_3
    sparse-switch v3, :sswitch_data_0

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/settings_ex/UCMHelpUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 402
    :sswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v5, 0x7f0e07c9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 405
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e0c28

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v10, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 408
    :sswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e1746

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v10, v6}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-direct {p0, v8}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showMISCInfo(Z)V

    goto/16 :goto_2

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x10006 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 421
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 726
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
