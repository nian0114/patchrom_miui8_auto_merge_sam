.class public Lcom/sec/epdg/EpdgPeriodicDpd;
.super Ljava/lang/Object;
.source "EpdgPeriodicDpd.java"


# static fields
.field private static INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd; = null

.field private static final TAG:Ljava/lang/String; = "[EpdgPeriodicDpd]"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[EpdgPeriodicDpd]"

    const-string v1, "EpdgPeriodicDpd instance created"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;
    .locals 3

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgPeriodicDpd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;

    if-nez v0, :cond_0

    const-string v0, "[EpdgPeriodicDpd]"

    const-string v2, "Creating EpdgPeriodicDpd instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgPeriodicDpd;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNattKeepAlivePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPeriodicDpdPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "apn_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized removePeriodicDpdPendingIntent(Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, "[EpdgPeriodicDpd]"

    const-string v2, "removePeriodicDpdPendingIntent: apnName is null, returning"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeTimerForNattKeepAlive()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getNattKeepAlivePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startTimerForNattKeepAlive(I)V
    .locals 8
    .param p1, "NattTimer"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v0, v4, v6

    .local v0, "alarmExpTime":J
    const-string v3, "[EpdgPeriodicDpd]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTimerForPeriodicDpd:  NattTimer is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alarmExpTime is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getNattKeepAlivePendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "pIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "alarmExpTime":J
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startTimerForPeriodicDpd(Ljava/lang/String;I)V
    .locals 8
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "dpdTimer"    # I

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v3, "[EpdgPeriodicDpd]"

    const-string v4, "startTimerForPeriodicDpd: apnName is null, returning"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p2

    add-long v0, v4, v6

    .local v0, "alarmExpTime":J
    const-string v3, "[EpdgPeriodicDpd]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTimerForPeriodicDpd: apnName is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dpdTimer is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alarmExpTime is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicDpdPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "pIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "alarmExpTime":J
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
