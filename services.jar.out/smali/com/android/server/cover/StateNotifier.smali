.class final Lcom/android/server/cover/StateNotifier;
.super Ljava/lang/Object;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;,
        Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;,
        Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;,
        Lcom/android/server/cover/StateNotifier$StateNotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_SEND_COVER_ATTACH_STATE:I = 0x1

.field private static final MSG_SEND_COVER_SWITCH_STATE:I = 0x0

.field private static final MSG_UPDATE_SVIEW_COVER_STATE:I = 0x2

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.StateNotifier"

.field static final TYPE_COVER_STATE_LISTENER:I = 0x2

.field static final TYPE_COVER_WINDOW_STATE_LISTENER:I = 0x4

.field static final TYPE_STATE_LISTENER:I = 0x1


# instance fields
.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mCoverOpen:Z

.field private mCoverType:I

.field private final mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

.field private mLcdOffDisableListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLcdOffDisabledByApp:Z

.field private mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

.field private mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

.field private mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLock:Ljava/lang/Object;

    .line 82
    iput-boolean v2, p0, Lcom/android/server/cover/StateNotifier;->mAttached:Z

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    .line 84
    iput-boolean v2, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    .line 90
    iput-object p2, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 93
    new-instance v0, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;-><init>(Lcom/android/server/cover/StateNotifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 99
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "update sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send coverstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send coverswitchstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send coverattachstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/StateNotifier;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/StateNotifier;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->handleSendCoverAttachState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->handleUpdateSViewCoverService(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cover/StateNotifier;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cover/StateNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/StateNotifier;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    return-void
.end method

.method private createCoverServiceConnectionLocked()V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/server/cover/StateNotifier;->mAttached:Z

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .line 451
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onBindSViewCoverService()V

    goto :goto_0
.end method

.method private enableLcdOffByCoverIfPossibleLocked()V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 676
    iget-boolean v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    invoke-interface {v0}, Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;->onLcdOffByCoverEnabled()V

    .line 683
    :cond_1
    return-void
.end method

.method private handleSendCoverAttachState(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 389
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 391
    .local v1, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    .line 393
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    :cond_1
    return-void
.end method

.method private handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 368
    .local v1, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 369
    invoke-virtual {v1, p2}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    .line 371
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 375
    :cond_1
    return-void
.end method

.method private handleUpdateSViewCoverService(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->createCoverServiceConnectionLocked()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 422
    :cond_2
    new-instance v0, Lcom/android/server/cover/StateNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/StateNotifier$1;-><init>(Lcom/android/server/cover/StateNotifier;)V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 429
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    return-void
.end method

.method private sendCoverAttachStateLocked(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v1, 0x1

    .line 378
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "sendCoverAttachStateLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 382
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 384
    if-eqz p1, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 385
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void

    .line 384
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 354
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "sendCoverSwitchStateLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 359
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 360
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 362
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    return-void
.end method

.method private updateSViewCoverServiceConnectionLocked(Z)V
    .locals 2
    .param p1, "attached"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_1

    .line 437
    if-eqz p1, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onBindSViewCoverService()V

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onUnbindSViewCoverService()V

    goto :goto_0
.end method

.method private updateSViewCoverServiceLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 403
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 405
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$StateNotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    return-void
.end method


# virtual methods
.method public checkSystemFeatureForCoverType(Lcom/samsung/android/cover/CoverState;)Z
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v0, 0x0

    .line 562
    if-nez p1, :cond_0

    .line 585
    :goto_0
    return v0

    .line 566
    :cond_0
    const-string v1, "CoverManager.StateNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSystemFeatureForCoverType type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 578
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    goto :goto_0

    .line 574
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    goto :goto_0

    .line 576
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    goto :goto_0

    .line 580
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    goto :goto_0

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x64 -> :sswitch_1
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 620
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "disableLcdOffByCover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v8, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 623
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    if-eqz v0, :cond_0

    .line 624
    iget-object v2, v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "disableLcdOffByCover : LCD off already called by app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-exit v8

    .line 637
    :goto_0
    return v1

    .line 631
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :cond_1
    const/4 v0, 0x0

    .line 632
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    new-instance v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;-><init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 634
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 635
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 637
    monitor-exit v8

    move v1, v7

    goto :goto_0

    .line 638
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 700
    const-string v2, " Current StateNotifier state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 703
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live listeners ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 705
    .local v1, "info":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v1, :cond_0

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 710
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 713
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LCD Off disabled by app: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LCD Off listeners ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 716
    .local v1, "info":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    if-eqz v1, :cond_2

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    .end local v1    # "info":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 721
    :cond_3
    :try_start_3
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 723
    return-void
.end method

.method enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 643
    const-string v4, "CoverManager.StateNotifier"

    const-string/jumbo v5, "enableLcdOffByCover"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 645
    const/4 v2, 0x0

    .line 646
    .local v2, "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 647
    .local v1, "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    if-eqz v1, :cond_0

    .line 648
    iget-object v5, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 649
    move-object v2, v1

    .line 655
    .end local v1    # "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 656
    const-string v5, "CoverManager.StateNotifier"

    const-string/jumbo v6, "enableLcdOffByCover: matching listener does not exist (must use the same listener for disable and enable)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    monitor-exit v4

    .line 665
    :goto_0
    return v3

    .line 661
    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 663
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 664
    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    .line 665
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 666
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onCoverAppCovered(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v2, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onCoverAppCovered(Z)I

    move-result v2

    .line 558
    :goto_0
    return v2

    .line 551
    :cond_0
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "onCoverAppCovered, called listener.onCoverAppCovered()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 553
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 554
    .local v1, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverAppCovered(Z)V

    goto :goto_1

    .line 556
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 694
    return-void
.end method

.method registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    const-string v1, "CoverManager.StateNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallback : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v8, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 251
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "CoverManager.StateNotifier"

    const-string/jumbo v2, "registerCallback : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-exit v8

    .line 265
    :goto_0
    return-void

    .line 259
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :cond_1
    const/4 v0, 0x0

    .line 260
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    new-instance v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;-><init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 262
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 263
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v8

    goto :goto_0

    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterCallback(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string v4, "CoverManager.StateNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterCallback : binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 276
    .local v1, "l":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v1, :cond_0

    .line 277
    iget-object v5, v1, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    move-object v2, v1

    .line 284
    .end local v1    # "l":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 285
    const-string v5, "CoverManager.StateNotifier"

    const-string/jumbo v6, "unregisterCallback : matching listener is NOT EXIST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v4

    .line 297
    :goto_0
    return v3

    .line 289
    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_3
    if-eqz v2, :cond_4

    .line 293
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 295
    :cond_4
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 296
    monitor-exit v4

    .line 297
    const/4 v3, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .prologue
    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 697
    return-void
.end method

.method updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V
    .locals 6
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;
    .param p3, "isBoot"    # Z

    .prologue
    const/16 v5, 0xff

    .line 314
    iput-boolean p1, p0, Lcom/android/server/cover/StateNotifier;->mAttached:Z

    .line 315
    iget v2, p2, Lcom/samsung/android/cover/CoverState;->type:I

    iput v2, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    .line 316
    iget-boolean v2, p2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v2, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    .line 319
    const-string v2, "CoverManager.StateNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverVerfiedState : attached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0, p2}, Lcom/android/server/cover/StateNotifier;->checkSystemFeatureForCoverType(Lcom/samsung/android/cover/CoverState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->sendCoverAttachStateLocked(Z)V

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, "isNFCSmartCoverType":Z
    const/4 v1, 0x0

    .line 326
    .local v1, "serialNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    if-eqz p2, :cond_1

    .line 331
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    if-ne v2, v5, :cond_5

    const/4 v0, 0x1

    .line 332
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/cover/StateNotifier;->checkSystemFeatureForCoverType(Lcom/samsung/android/cover/CoverState;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->updateSViewCoverServiceConnectionLocked(Z)V

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isRuggedizedFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3}, Lcom/android/server/cover/CoverManagerUtils;->showRuggedizedPopup(Landroid/content/Context;ZZ)V

    .line 346
    :cond_3
    if-eqz p1, :cond_4

    .line 347
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p3}, Lcom/android/server/cover/CoverManagerUtils;->sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 349
    :cond_4
    return-void

    .line 331
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "isBoot"    # Z

    .prologue
    .line 302
    const-string v0, "CoverManager.StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverSwitchState : switchState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", widthPixel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heightPixel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->updateSViewCoverServiceLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 310
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/StateNotifier;->sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 311
    return-void
.end method

.method public updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 10
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v9, 0x6

    const/4 v6, 0x0

    .line 457
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 458
    .local v1, "isOpen":Z
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    .line 460
    .local v4, "type":I
    const-string v5, "CoverManager.StateNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePowerStateLocked : isOpen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v7, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 464
    sparse-switch v4, :sswitch_data_0

    .line 544
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v6

    .line 462
    goto :goto_0

    .line 468
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    .line 475
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 476
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    .line 483
    :sswitch_2
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 486
    :cond_2
    const-string v5, "CoverManager.StateNotifier"

    const-string/jumbo v6, "updateSViewCoverServiceLocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 489
    :cond_3
    if-eqz v1, :cond_5

    .line 490
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 491
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    .line 493
    :cond_4
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto/16 :goto_1

    .line 495
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz v5, :cond_8

    .line 498
    iget-object v6, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 499
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 500
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 501
    .local v2, "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cover close: goToSleep disabled by: PID:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " UID:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "logMSG":Ljava/lang/String;
    const-string v5, "CoverManager.StateNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 513
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .end local v3    # "logMSG":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 510
    :cond_6
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 511
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 513
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 515
    :cond_8
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_1

    .line 520
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportNfcLedCover()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 521
    if-eqz v1, :cond_a

    .line 522
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 523
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto/16 :goto_1

    .line 525
    :cond_9
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto/16 :goto_1

    .line 527
    :cond_a
    iget-boolean v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz v5, :cond_0

    .line 530
    iget-object v6, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 531
    :try_start_2
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 533
    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    .line 535
    :cond_b
    monitor-exit v6

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_3
        0x8 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
