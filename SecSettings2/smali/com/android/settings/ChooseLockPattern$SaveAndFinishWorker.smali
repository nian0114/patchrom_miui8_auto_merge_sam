.class Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings_ex/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ChooseLockPattern$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ChooseLockPattern$1;

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1086
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 1087
    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1041
    const/4 v1, 0x0

    .line 1042
    .local v1, "result":Landroid/content/Intent;
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$1000()Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    .line 1045
    .local v3, "userId":I
    :goto_0
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside Pattern isSharedDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->access$1200()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    # getter for: Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->isSharedDevice:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->access$1200()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1047
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1050
    :cond_0
    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$1000()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1051
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1054
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 1056
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v4, :cond_3

    .line 1059
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1064
    .local v2, "token":[B
    :goto_1
    if-nez v2, :cond_2

    .line 1065
    const-string v4, "ChooseLockPattern"

    const-string v5, "critical: no token returned for known good pattern"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1069
    .restart local v1    # "result":Landroid/content/Intent;
    const-string v4, "hw_auth_token"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1072
    .end local v2    # "token":[B
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    # getter for: Lcom/android/settings_ex/ChooseLockPattern;->mIsFromKnoxFinger:Z
    invoke-static {}, Lcom/android/settings_ex/ChooseLockPattern;->access$1000()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Activity;->setResult(I)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/ChooseLockPattern;

    # invokes: Lcom/android/settings_ex/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v4, v8}, Lcom/android/settings_ex/ChooseLockPattern;->access$900(Lcom/android/settings_ex/ChooseLockPattern;I)V

    .line 1077
    :cond_4
    return-object v1

    .line 1042
    .end local v3    # "userId":I
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_0

    .line 1060
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v2, 0x0

    .restart local v2    # "token":[B
    goto :goto_1
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p7, "currentPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p6, "chosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJ)V

    .line 1031
    iput-object p7, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    .line 1032
    iput-object p6, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    .line 1034
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 1036
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPattern$SaveAndFinishWorker;->start()V

    .line 1037
    return-void

    .line 1034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
