.class public Lcom/android/server/am/SmartAdjustManager;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static DB_CONN_KILL_SKIP:Z = false

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static SAMP_DEBUG:Z = false

.field static SAMP_DEBUG_TRACE:Z = false

.field static SAMP_ENABLE:Z = false

.field static SAMP_HOTNESS_ENABLE:Z = false

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_CACHED_APP_MAX:I = 0x0

.field static final SMART_DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "SAMP"

.field static final TAG_HOTNESS:Ljava/lang/String; = "SAMP_Hotness"

.field static final TAG_SDHA:Ljava/lang/String; = "SAMP_SDHA"

.field static final TAG_TEST:Ljava/lang/String; = "_test"

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field private SAMP_HOTNESS_MAX_VALUE:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field private mProcessesExtraCache:J

.field numCached:I

.field numEmpty:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    const-string v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_BG_APPS_MAX:I

    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    const-string v0, "unknown"

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessStatsService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "processStats"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    const v0, 0xf4240

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_MAX_VALUE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p3, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    return-void
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cchListExcludeService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "provi":I
    :goto_1
    if-ltz v6, :cond_4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v1, v0, :cond_1

    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_0

    sget-boolean v7, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_3

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "j":I
    :cond_4
    sget-boolean v7, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "provi":I
    :cond_6
    return-void
.end method


# virtual methods
.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const-string v1, "unknown"

    sput-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SAMP_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decreaseHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .local v0, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->decreaseHotness(I)V

    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpsampLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "ACTIVITY MANAGER SAMP (dumpsys activity samp)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .local v0, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tHotnessAdj: activity %8d , empty %8d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v8}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v1    # "entryHotness":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method protected getBgProcCount(I)I
    .locals 1
    .param p1, "kind"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getShortPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    move-object v0, p1

    .local v0, "shortPkgName":Ljava/lang/String;
    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "samsung."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "samsung."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "sec."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "app."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "app."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "google."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "shortPkgName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_6
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected final smartAdjustProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 52
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_0

    const-wide/16 v44, 0x40

    const-string v43, "smartAdjustProcessesLocked"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .local v32, "smartDHACachedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .local v33, "smartDHAEmptyProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .local v28, "now":J
    const-wide/32 v44, 0x1b7740

    sub-long v30, v28, v44

    .local v30, "oldTime":J
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v43, v0

    if-nez v43, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1

    sget-boolean v43, Lcom/android/server/am/ProcessList;->mAMSExceptionEnable:Z

    if-eqz v43, :cond_2

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v43

    const/16 v44, 0x64

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    const-string v43, "android.process.acore"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_1

    const-string v43, "com.sec.android.provider.logsprovider"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_1

    const-string v43, "com.samsung.klmsagent"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_1

    const-string v43, "com.android.contacts"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_1

    const-string v43, "android.process.media"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_1

    const-string v43, "com.android.managedprovisioning"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v43, v0

    packed-switch v43, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    :goto_2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v43, v0

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v43, v0

    const/16 v44, 0x9

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    if-lez v43, :cond_7

    const/16 v43, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v43, v0

    sget v44, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_4

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v43

    if-eqz v43, :cond_3

    const-string v43, "com.android.vending"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_3

    const-string v43, "GATE"

    const-string v44, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "cachedCount ##"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_4
    const/16 v43, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v43, v0

    sget v44, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_5

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v44, v0

    cmp-long v43, v44, v30

    if-gez v43, :cond_5

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "empty for "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-wide/32 v44, 0x1b7740

    add-long v44, v44, v30

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    const-wide/16 v46, 0x3e8

    div-long v44, v44, v46

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "s"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v43, v0

    sget v44, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_6

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "emptyCount ##"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_6
    const/16 v43, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    const/16 v43, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_8
    const/16 v27, 0x0

    .local v27, "skipKillBGCount":I
    const-wide/16 v6, 0x0

    .local v6, "avgUSS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v22

    .local v22, "margin":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    add-int v10, v43, v44

    .local v10, "bgCount":I
    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_9

    const-wide/16 v44, 0x40

    const-string v43, "get memory size"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_9
    new-instance v15, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v15}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .local v15, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v36

    .local v36, "szFreeMem":J
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v34

    .local v34, "szCached":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-lez v43, :cond_a

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    move-wide/from16 v48, v0

    mul-long v44, v44, v48

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v48, v0

    sget-boolean v43, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v43, :cond_c

    const-wide/high16 v44, 0x3ff8000000000000L    # 1.5

    :goto_3
    mul-double v44, v44, v48

    sub-double v44, v46, v44

    move-wide/from16 v0, v44

    double-to-long v0, v0

    move-wide/from16 v34, v0

    :cond_a
    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_b

    const-wide/16 v44, 0x40

    const-string v43, "get memory size"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v43, v0

    const/16 v44, 0xf

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/am/ProcessList;->getLMKThreshold(I)J

    move-result-wide v20

    .local v20, "lmkThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ProcessList;->getKswapdWatermark()J

    move-result-wide v16

    .local v16, "kswapdWatermark":J
    add-long v44, v16, v22

    sub-long v40, v44, v36

    .local v40, "szNeedFree":J
    const-wide/16 v38, 0x0

    .local v38, "szFreed":J
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .local v42, "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v14, v43, -0x1

    .local v14, "j":I
    :goto_4
    if-ltz v14, :cond_e

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v43

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "j":I
    .end local v16    # "kswapdWatermark":J
    .end local v20    # "lmkThreshold":J
    .end local v38    # "szFreed":J
    .end local v40    # "szNeedFree":J
    .end local v42    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_c
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "j":I
    .restart local v16    # "kswapdWatermark":J
    .restart local v20    # "lmkThreshold":J
    .restart local v38    # "szFreed":J
    .restart local v40    # "szNeedFree":J
    .restart local v42    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_d
    const/16 v43, 0x0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_5

    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v14, v43, -0x1

    :goto_6
    if-ltz v14, :cond_10

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v43

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    :cond_f
    const/16 v43, 0x0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_7

    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_10
    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v43, :cond_12

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v25

    .local v25, "nEmptyNum":I
    div-int/lit8 v26, v25, 0xa

    .local v26, "nHotnessSlot":I
    if-lez v26, :cond_12

    new-instance v43, Lcom/android/server/am/SmartAdjustManager$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$1;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v24, 0x1

    .local v24, "nCnt":I
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_12

    sub-int v43, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    sub-int v43, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v43, :cond_11

    const-string v43, "SAMP"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Protected empty proc: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "("

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "/"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ")"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "nCnt":I
    .end local v25    # "nEmptyNum":I
    .end local v26    # "nHotnessSlot":I
    :cond_12
    const-wide/16 v44, 0x0

    cmp-long v43, v40, v44

    if-lez v43, :cond_19

    add-long v44, v40, v20

    cmp-long v43, v34, v44

    if-gtz v43, :cond_19

    sget v43, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v43

    if-le v10, v0, :cond_19

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    new-instance v43, Lcom/android/server/am/SmartAdjustManager$2;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$2;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    invoke-static/range {v42 .. v43}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v11, 0x0

    :goto_9
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v11, v0, :cond_19

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_14

    :cond_13
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_14
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v43, v0

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_15

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v43, v0

    const/16 v44, 0x9

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    :cond_15
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    :cond_16
    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    if-nez v43, :cond_17

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->hasProviderClient:Z

    move/from16 v43, v0

    if-eqz v43, :cond_17

    const-string v43, "SAMP_SDHA"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "No longer want but don\'t kill provider connected empty : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " (pid "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") (adj "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "(clientLowAdj "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") (clientName : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ")"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v43, 0x10

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    :cond_17
    const-wide/16 v18, 0x0

    .local v18, "lastKillTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Long;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v12, v28, v18

    .local v12, "interval":J
    const-wide/16 v44, 0x1388

    cmp-long v43, v12, v44

    if-gez v43, :cond_18

    const-string v43, "SAMP_SDHA"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "No longer want but don\'t kill hotness protected bg : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " (pid "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") (lastKillTime: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-wide/16 v46, 0x3e8

    div-long v46, v12, v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " sec ago)"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .end local v12    # "interval":J
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J

    move-result-wide v8

    .local v8, "avgUssSize":J
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "BG, "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-wide/16 v44, 0x400

    div-long v44, v8, v44

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "K, hotnessAdj="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", oom_adj="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/am/SmartAdjustManager;->updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V

    add-long v38, v38, v8

    add-int/lit8 v10, v10, -0x1

    cmp-long v43, v38, v40

    if-gez v43, :cond_19

    sget v43, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v43

    if-gt v10, v0, :cond_13

    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "avgUssSize":J
    .end local v18    # "lastKillTime":J
    :cond_19
    const-wide/16 v44, 0x0

    cmp-long v43, v38, v44

    if-gtz v43, :cond_1a

    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v43, :cond_1b

    :cond_1a
    const-string v44, "SAMP_SDHA"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "F:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v36, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, C:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v34, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, ProcCnt:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "K, mgn:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v22, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, nF:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-wide/16 v46, 0x0

    cmp-long v43, v40, v46

    if-gtz v43, :cond_1d

    const-string v43, "-----"

    :goto_b
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "K, fd:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-wide/16 v46, 0x0

    cmp-long v43, v38, v46

    if-nez v43, :cond_1e

    const-string v43, "-----"

    :goto_c
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "K, thd:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v20, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, wm:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v16, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, cch:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, emp:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, ", skipBG:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, ", TOP:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    if-eqz p2, :cond_1f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v46, "com."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v46, "android."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v46, "sec."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v46, "samsung."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v46, "app."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    :goto_d
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    sget-boolean v43, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_1c

    const-wide/16 v44, 0x40

    const-string v43, "smartAdjustProcessesLocked"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_1c
    return-void

    :cond_1d
    const-string v43, "%05d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v40, v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_b

    :cond_1e
    const-string v43, "%05d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v38, v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_c

    :cond_1f
    const-string v43, "null"

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final updateHotnessAdj(Landroid/content/pm/ApplicationInfo;I)V
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "nHotnessType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v7, v6, v6}, Lcom/android/server/am/ActivityManagerService;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find package record and new a Process Reccord in updateHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string v2, "unknown"

    sput-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .local v1, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHotnessAdj right after finishboot in PPM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .restart local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string v5, "unknown"

    sput-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .local v3, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v5, :cond_5

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v5

    iget v7, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_MAX_VALUE:I

    if-le v5, v7, :cond_5

    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SAMP_Hotness"

    const-string v7, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v1, v0

    .local v1, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->setHalf(I)V

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "SAMP_Hotness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HotnessMAX! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v2    # "entryHotness":Ljava/util/Map$Entry;
    .end local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v4    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    :try_start_1
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v3, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .restart local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SAMP_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateHotnessAdj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hotness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SAMP_SDHA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected updateProperty()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x400

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    const-string v2, "sys.config.samp_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "systemPropString":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    :cond_0
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    :cond_1
    const-string v2, "sys.config.samp_hotness_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    :cond_3
    const-string v2, "sys.config.samp_debug"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    :cond_4
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    :cond_5
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    invoke-static {v2}, Lcom/android/server/am/ProcessRecord;->setSmartDHADebugMode(Z)V

    const-string v2, "sys.config.samp_debug_trace"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    :cond_6
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    :cond_7
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_d

    :try_start_0
    const-string v2, "sys.config.s_dha_margin"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessList;->setSmartDHADefaultMargin(J)V

    :cond_8
    const-string v2, "sys.config.s_dha_bg_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    :cond_9
    const-string v2, "sys.config.s_dha_bg_min"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    :cond_a
    const-string v2, "sys.config.s_dha_db_kill"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    :cond_b
    const-string v2, "sys.config.s_dha_extra_cache"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    :cond_c
    const-string v2, "sys.config.s_dha_cache_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_0
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMP       : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_f

    const-string v2, "Enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hotness    : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_10

    const-string v2, "Enabled"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "samp debug : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "Enabled"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "samp trace : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v2, :cond_12

    const-string v2, "Enabled"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_e

    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DftMgn : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, ExtraC : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, MaxBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MinBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MaxC :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", DBcKill :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    if-eqz v2, :cond_13

    const-string v2, "Y"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Hotness :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_14

    const-string v2, "Y"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SAMP_SDHA"

    const-string v3, "Smart DHA parameter incorrect format!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v2, "Disabled"

    goto/16 :goto_1

    :cond_10
    const-string v2, "Disabled"

    goto/16 :goto_2

    :cond_11
    const-string v2, "Disabled"

    goto/16 :goto_3

    :cond_12
    const-string v2, "Disabled"

    goto/16 :goto_4

    :cond_13
    const-string v2, "N"

    goto :goto_5

    :cond_14
    const-string v2, "N"

    goto :goto_6
.end method
