.class public Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# static fields
.field private static isSharedDevice:Z


# instance fields
.field helpText:Landroid/widget/TextView;

.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentPattern:Ljava/lang/String;

.field private mEffectiveUserId:I

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 214
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 281
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 446
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 448
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 937
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 938
    return-void
.end method

.method private saveForAppLock()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 773
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 774
    .local v3, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v4

    .line 777
    .local v1, "lockVirgin":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, "mPatternSavedString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 780
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 783
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportPatternBackupPin()Z

    move-result v5

    if-nez v5, :cond_4

    .line 784
    if-eqz v2, :cond_1

    .line 785
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V

    .line 787
    :cond_1
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForAppLockBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$700()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 788
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setAppLockFingerPrintLockscreen(ZI)V

    .line 789
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "applock_lock_type"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setResult(I)V

    .line 803
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 804
    return-void

    .line 774
    .end local v1    # "lockVirgin":Z
    .end local v2    # "mPatternSavedString":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 793
    .restart local v1    # "lockVirgin":Z
    .restart local v2    # "mPatternSavedString":Ljava/lang/String;
    :cond_4
    const-string v5, "ChooseLockPattern"

    const-string v6, "Pattern setup is done, will call additional pin setup screen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings_ex/ChooseLockAdditionalPin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 795
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "AppLockPatternOwnAdditionalPin"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    const-string v4, "AppLockPatternSaved"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string v4, "from_applock"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromAppLock:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$800()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    const-string v4, "forAppLockBackupKey"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForAppLockBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$700()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 799
    const-string v4, "for_fingerprint"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$400()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    const/high16 v4, 0x2000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private saveForPrivateMode()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 735
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 736
    .local v3, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v4

    .line 739
    .local v1, "lockVirgin":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "patternChoosedString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 742
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 745
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportPatternBackupPin()Z

    move-result v5

    if-nez v5, :cond_3

    .line 747
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)V

    .line 749
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 750
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPrivateModeFingerPrintLockscreen(ZI)V

    .line 751
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setResult(I)V

    .line 767
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 768
    return-void

    .line 736
    .end local v1    # "lockVirgin":Z
    .end local v2    # "patternChoosedString":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 756
    .restart local v1    # "lockVirgin":Z
    .restart local v2    # "patternChoosedString":Ljava/lang/String;
    :cond_3
    const-string v5, "ChooseLockPattern"

    const-string v6, "Pattern setup is done, will call additional pin setup screen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings_ex/ChooseLockAdditionalPin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 758
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 759
    const-string v4, "PersonalPagePatternSaved"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string v4, "forPrivateBackupKey"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$600()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    const-string v4, "from_personal"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$500()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    const-string v4, "for_fingerprint"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$400()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 763
    const/high16 v4, 0x2000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private startSaveAndFinish()V
    .locals 8

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 942
    const-string v0, "ChooseLockPattern"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    .line 948
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 950
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPattern$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    .line 951
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    const-string v3, "save_and_finish_worker"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 953
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 957
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 329
    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 588
    invoke-static {p1}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 595
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 605
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseLockPattern;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern;->access$900(Lcom/android/settings_ex/ChooseLockPattern;I)V

    .line 600
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 602
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 18

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v2, v3, :cond_2

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_0

    .line 610
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected ui stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when button is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 614
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 730
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v2, v3, :cond_13

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_3

    .line 617
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected ui stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when button is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 621
    .local v10, "isFallback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Block"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 622
    .local v7, "isBlock":Z
    const/4 v11, 0x0

    .line 625
    .local v11, "isSignature":Z
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$500()Z

    move-result v2

    if-nez v2, :cond_4

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$600()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 626
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->saveForPrivateMode()V

    goto :goto_0

    .line 628
    :cond_5
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromAppLock:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$800()Z

    move-result v2

    if-nez v2, :cond_6

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForAppLockBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$700()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 629
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->saveForAppLock()V

    goto :goto_0

    .line 635
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 636
    .local v8, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_8

    .line 637
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    .line 640
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting checking shared device, isSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_8
    sget-boolean v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportPatternBackupPin()Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v10, :cond_e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 647
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 649
    const/4 v14, 0x4

    .line 650
    .local v14, "minLength":I
    const/16 v13, 0x8

    .line 651
    .local v13, "maxLength":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/ChooseLockAdditionalPin;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 652
    .local v9, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.SetupChooseLockPattern$SetupChooseLockPatternFragment"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 653
    const-string v2, "SetupWizardLock"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    :cond_a
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 656
    const-string v2, "isFromKnoxFinger"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    :cond_b
    const-string v2, "lockscreen.password_min"

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    const-string v2, "lockscreen.password_max"

    const/16 v3, 0x8

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    const-string v2, "for_fingerprint"

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$400()Z

    move-result v3

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_require_password"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 665
    .local v16, "required":Z
    const-string v2, "extra_require_password"

    move/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    if-eqz v7, :cond_c

    .line 670
    const v15, 0x9100

    .line 671
    .local v15, "quality":I
    const-string v2, "lockscreen.password_type"

    invoke-virtual {v9, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v2, "Block"

    invoke-virtual {v9, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    const-string v2, "firstlock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 687
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 677
    .end local v15    # "quality":I
    :cond_c
    const/high16 v15, 0x10000

    .line 678
    .restart local v15    # "quality":I
    const-string v2, "lockscreen.password_type"

    invoke-virtual {v9, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    const-string v2, "firstlock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const/high16 v2, 0x2000000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    if-eqz v2, :cond_d

    .line 682
    const-string v2, "has_challenge"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    const-string v2, "challenge"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    invoke-virtual {v9, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 685
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 690
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "maxLength":I
    .end local v14    # "minLength":I
    .end local v15    # "quality":I
    .end local v16    # "required":Z
    :cond_e
    if-eqz v7, :cond_12

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v12, 0x1

    .line 692
    .local v12, "lockVirgin":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_lockscreen_is_smart_lock"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    if-eqz v12, :cond_f

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 700
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 708
    .end local v12    # "lockVirgin":Z
    :goto_3
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v17, "warningClearIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    sget-boolean v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    if-nez v2, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 715
    :cond_10
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside Return, isSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    .end local v17    # "warningClearIntent":Landroid/content/Intent;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 704
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_3

    .line 721
    .end local v7    # "isBlock":Z
    .end local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "isFallback":Z
    .end local v11    # "isSignature":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v2, v3, :cond_1

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v2, v3, :cond_14

    .line 723
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 726
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 728
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 256
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 264
    :goto_1
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 260
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    goto :goto_1

    .line 254
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 966
    if-nez p1, :cond_0

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 968
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 972
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 471
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/ChooseLockPattern;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mEffectiveUserId:I

    .line 477
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const v0, 0x7f04005a

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040059

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 581
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 582
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 585
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 577
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 829
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 831
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 833
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 838
    const-string v0, "currentPattern"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 491
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 492
    const v6, 0x7f0d0102

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 493
    const v6, 0x7f0d0111

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 494
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 495
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 498
    const v6, 0x7f0d0112

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 500
    const v6, 0x7f0d0113

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 501
    const v6, 0x7f0d0114

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 503
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForFingerprint:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 508
    const v6, 0x7f0d010e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    .line 509
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 510
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 512
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 518
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const v6, 0x7f0d0110

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 521
    .local v5, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "confirm_credentials"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 525
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 526
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "password"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 527
    const-string v6, "has_challenge"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    .line 529
    const-string v6, "challenge"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    .line 530
    const-string v6, "ChooseLockPattern"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "challenge : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-nez p2, :cond_4

    .line 532
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$500()Z

    move-result v6

    if-nez v6, :cond_3

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForPrivateModeBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$600()Z

    move-result v6

    if-nez v6, :cond_3

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mForAppLockBackupKey:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$700()Z

    move-result v6

    if-nez v6, :cond_3

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromAppLock:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$800()Z

    move-result v6

    if-nez v6, :cond_3

    .line 533
    if-eqz v0, :cond_2

    .line 536
    sget-object v6, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 537
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v7, 0x37

    const v8, 0x7f0e025b

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    .line 541
    .local v2, "launchedConfirmationActivity":Z
    if-nez v2, :cond_1

    .line 542
    sget-object v6, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 566
    .end local v2    # "launchedConfirmationActivity":Z
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    sget-object v6, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 548
    :cond_3
    sget-object v6, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 552
    :cond_4
    const-string v6, "chosenPattern"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "patternString":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 554
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 557
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 558
    const-string v6, "currentPattern"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 560
    :cond_6
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v6

    const-string v7, "uiStage"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "save_and_finish_worker"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    iput-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;

    goto :goto_0
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    const/4 v7, 0x0

    .line 850
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 852
    .local v1, "previousStage":Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 856
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_2

    .line 857
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    :goto_0
    iget v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 871
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :goto_1
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v2, v3, :cond_6

    .line 877
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    :goto_2
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 885
    iget-object v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 888
    iget-boolean v2, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v2, :cond_7

    .line 889
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 896
    :goto_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 897
    const/4 v0, 0x0

    .line 899
    .local v0, "announceAlways":Z
    sget-object v2, Lcom/android/settings_ex/ChooseLockPattern$1;->$SwitchMap$com$android$settings$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 927
    :goto_4
    :pswitch_0
    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_1

    .line 928
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 930
    :cond_1
    return-void

    .line 862
    .end local v0    # "announceAlways":Z
    :cond_2
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromPersonalPage:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 863
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->privateModeHeaderMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 864
    :cond_3
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mFromAppLock:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$800()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 865
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x7f0e07e0

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 867
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 873
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 879
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v3, v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 881
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v3, v3, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 891
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 901
    .restart local v0    # "announceAlways":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 904
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 907
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 908
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 909
    const/4 v0, 0x1

    .line 910
    goto :goto_4

    .line 914
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto/16 :goto_4

    .line 917
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 918
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 919
    const/4 v0, 0x1

    .line 920
    goto/16 :goto_4

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
