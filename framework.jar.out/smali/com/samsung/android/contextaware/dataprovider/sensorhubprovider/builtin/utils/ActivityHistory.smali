.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$1;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x5a0

.field private static volatile mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;


# instance fields
.field private mBufferIndex:I

.field private mBufferSize:I

.field private final mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x5a0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->initialize()V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initialize()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    return-void
.end method


# virtual methods
.method public erase()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->initialize()V

    const-string v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityAccuracy(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    goto :goto_0
.end method

.method public getActivityDuration(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getActivityTimestamp(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getActivityType(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x5a0

    aget-object v0, v0, v1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    return v0
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->erase()V

    return-void
.end method

.method public putActivityData(J[I[I[J)V
    .locals 7
    .param p1, "timestamp"    # J
    .param p3, "activityType"    # [I
    .param p4, "accuracy"    # [I
    .param p5, "duration"    # [J

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-wide v2, p5, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x5a0

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v2, 0x5a0

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    aget-object v1, v1, v2

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)J

    aget-wide v2, p5, v0

    add-long/2addr p1, v2

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    aget-object v1, v1, v2

    aget v2, p3, v0

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)I

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    aget-object v1, v1, v2

    aget v2, p4, v0

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$302(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)I

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    aget-object v1, v1, v2

    aget-wide v2, p5, v0

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J
    invoke-static {v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
