.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private mCurrentUserId:I

.field private volatile mInputRestricted:Z

.field private volatile mIsShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mSimSecure:Z

.field private volatile mSwipeLockShowingBeforeTimeout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    :try_start_0
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardStateMonitor"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized getCurrentUser()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyguardStateMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSimSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mInputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    return v0
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0
    .param p1, "inputRestricted"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0
    .param p1, "simSecure"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    return-void
.end method

.method public onSwipeLockShowingstateChanged(Z)V
    .locals 0
    .param p1, "swipelockshowing"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
