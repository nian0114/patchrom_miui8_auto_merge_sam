.class public Lcom/sec/epdg/throttle/ThrottleManager;
.super Ljava/lang/Object;
.source "ThrottleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/throttle/ThrottleManager$1;,
        Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;
    }
.end annotation


# static fields
.field private static final CLEANUP_INTERVAL:J = 0x5265c00L

.field private static final MAX_SSID_SUPPORTED:I = 0x14

.field private static final MIN_RETRY_INTERVAL:I = 0x0

.field private static final PDN_CONNECTION_REJECTTION:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "[THROTTLEMANAGER]"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

.field private mIsRetryEnabled:Z

.field private mIsThrottleEnabled:Z

.field private mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

.field private mTimerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/sec/epdg/throttle/ThrottleTimer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRetryEnabled"    # Z
    .param p3, "isThrottleEnabled"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "[THROTTLEMANAGER]"

    const-string v1, "Initializing throttle manager"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;-><init>(Lcom/sec/epdg/throttle/ThrottleManager$1;)V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    .line 75
    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsRetryEnabled:Z

    .line 76
    iput-boolean p3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    .line 77
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private addOrGetTimer(Ljava/lang/String;I)V
    .locals 9
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "reqTimerType"    # I

    .prologue
    const/4 v8, 0x2

    .line 106
    if-ne p2, v8, :cond_2

    .line 107
    const-string/jumbo v2, "max_retries=infinite,3600000"

    .line 113
    .local v2, "timerConfig":Ljava/lang/String;
    :goto_0
    const-string v3, "[THROTTLEMANAGER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrGetTimer timerConfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    const-string v3, "[THROTTLEMANAGER]"

    const-string v4, "addOrGetTimer(): existing timer case"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/throttle/ThrottleTimer;

    iput-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 117
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v3}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimerType()I

    move-result v3

    if-eq p2, v3, :cond_0

    .line 119
    const-string v3, "[THROTTLEMANAGER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrGetTimer resetting the timer config reqTimerType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentTimerType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v5}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimerType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v3, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-direct {v3, v2, p2}, Lcom/sec/epdg/throttle/ThrottleTimer;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 122
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v3}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    .line 126
    :cond_0
    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v3}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimeLeft()J

    move-result-wide v0

    .line 131
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_5

    .line 132
    const-string v4, "[THROTTLEMANAGER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrGetTimer(): time left for existing ssid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Suppressed"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sec"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getRetryPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 154
    .end local v0    # "time":J
    :cond_1
    :goto_2
    return-void

    .line 108
    .end local v2    # "timerConfig":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    .line 109
    const-string/jumbo v2, "max_retries=infinite,5000,30000,60000,300000,900000,1800000,3600000"

    .restart local v2    # "timerConfig":Ljava/lang/String;
    goto/16 :goto_0

    .line 111
    .end local v2    # "timerConfig":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "max_retries=infinite,0,0,0,60000:15000,120000,480000,900000"

    .restart local v2    # "timerConfig":Ljava/lang/String;
    goto/16 :goto_0

    .line 132
    .restart local v0    # "time":J
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_5
    const-string v4, "[THROTTLEMANAGER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrGetTimer(): timer expired for ssid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Suppressed"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " time "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    goto :goto_3

    .line 149
    .end local v0    # "time":J
    :cond_7
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_8

    .line 150
    invoke-virtual {p0}, Lcom/sec/epdg/throttle/ThrottleManager;->cleanup()V

    .line 151
    :cond_8
    new-instance v3, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-direct {v3, v2, p2}, Lcom/sec/epdg/throttle/ThrottleTimer;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 152
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v3, 0x0

    const-string v4, "[THROTTLEMANAGER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added new ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private getDataRetryIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    return-object v0
.end method

.method private getRetryPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getDataRetryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "apn_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v1, "ssid"

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private updatePermanentThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "incrPermThrottleCounter":Z
    const/4 v0, 0x0

    .line 299
    .local v0, "ikeErrorCode":I
    if-nez p2, :cond_1

    .line 300
    const-string v2, "[THROTTLEMANAGER]"

    const-string v3, "IWlanError null."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    .line 305
    const-string v2, "[THROTTLEMANAGER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ike error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanError$IkeError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_2

    .line 307
    const-string v2, "[THROTTLEMANAGER]"

    const-string v3, "PDN_CONNECTION_REJECTTION requirement. No retry "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 319
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    const/16 v2, 0x2af8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2af9

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2328

    if-ne v0, v2, :cond_4

    .line 323
    :cond_3
    const/4 v1, 0x1

    .line 329
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    .line 330
    const-string v2, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    const-string v2, "[THROTTLEMANAGER]"

    const-string v3, "Not increase permanent throttle counter"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :pswitch_0
    const/4 v1, 0x1

    .line 314
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVodafoneRetryTimer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    const/4 v1, 0x0

    goto :goto_1

    .line 326
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 333
    :cond_6
    const-string v2, "[THROTTLEMANAGER]"

    const-string v3, "Ike Error requires permanent throttling retry logic"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->incrementPermanentThrottleCounter()V

    goto/16 :goto_0

    .line 337
    :cond_7
    const-string v2, "[THROTTLEMANAGER]"

    const-string v3, "Clearing the block request flag."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    goto/16 :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 10

    .prologue
    .line 84
    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 85
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 87
    .local v0, "currentTimestamp":J
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "ssid":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 90
    .local v4, "timestamp":J
    sub-long v6, v0, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 91
    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "timestamp":J
    :cond_1
    return-void
.end method

.method public getThrottleTimerCount()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 280
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleTimer;->getThrottleCount()I

    move-result v0

    goto :goto_0
.end method

.method public isRetryThrottled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v1, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->isRetryThrottled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    if-nez v1, :cond_2

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->addOrGetTimer(Ljava/lang/String;I)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleTimer;->isRetryThrottled()Z

    move-result v0

    goto :goto_0
.end method

.method public isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    if-eqz p2, :cond_0

    .line 172
    const-string v2, "[THROTTLEMANAGER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-boolean v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v2, :cond_2

    .line 199
    :cond_1
    :goto_0
    return v0

    .line 180
    :cond_2
    const-string v2, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v2, v3, :cond_1

    .line 182
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    .line 183
    const-string v0, "[THROTTLEMANAGER]"

    const-string v2, "Throttling require for this error."

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 184
    goto :goto_0

    .line 189
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v2, v3, :cond_1

    .line 191
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_1

    .line 192
    const-string v0, "[THROTTLEMANAGER]"

    const-string v2, "Throttling require for this error."

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 193
    goto :goto_0

    .line 198
    :cond_4
    const-string v0, "[THROTTLEMANAGER]"

    const-string v2, "Throttling require for this error."

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public onSimChanged()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "[THROTTLEMANAGER]"

    const-string/jumbo v1, "onSimChanged()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    .line 294
    :cond_0
    return-void
.end method

.method public onWifiConnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public onWifiDisconnected(Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 265
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getDataRetryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 267
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 268
    return-void
.end method

.method public resetThrottlingTimer()V
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x0

    const-string v1, "[THROTTLEMANAGER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset throttle timer for ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 255
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    .line 256
    return-void
.end method

.method public startTimerOrIncrementCounter(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    .locals 8
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 210
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 211
    const-string v3, "[THROTTLEMANAGER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ike error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanError$IkeError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    const/4 v2, 0x1

    .line 214
    .local v2, "reqTimerType":I
    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsRetryEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v3, :cond_2

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    :cond_3
    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v3, v4, :cond_5

    .line 222
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/VerizonIkeError;->getVerizonIkeErrorCode(I)I

    move-result v3

    const/16 v4, 0x2904

    if-ne v3, v4, :cond_4

    .line 226
    const/4 v2, 0x2

    .line 228
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVodafoneRetryTimer()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_5

    .line 230
    const/4 v2, 0x3

    .line 233
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/sec/epdg/throttle/ThrottleManager;->addOrGetTimer(Ljava/lang/String;I)V

    .line 235
    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v3, :cond_6

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->updatePermanentThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 239
    :cond_6
    const/4 v3, 0x0

    const-string v4, "[THROTTLEMANAGER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update timer/counter for ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v3}, Lcom/sec/epdg/throttle/ThrottleTimer;->startTimerOrIncrementCounter()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    add-long v0, v4, v6

    .line 242
    .local v0, "alarmExpTime":J
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getRetryPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
