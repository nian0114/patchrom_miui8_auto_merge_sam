.class Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;
.super Ljava/lang/Thread;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatteryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAndIconLoader"
.end annotation


# instance fields
.field private mAbort:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "BatteryUsage Icon Loader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->mAbort:Z

    .line 58
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->mAbort:Z

    .line 62
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 68
    :goto_0
    sget-object v2, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->mAbort:Z

    if-eqz v1, :cond_2

    .line 70
    :cond_0
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :cond_1
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 74
    monitor-exit v2

    return-void

    .line 76
    :cond_2
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    .line 77
    .local v0, "be":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->loadNameAndIcon()V

    goto :goto_0

    .line 77
    .end local v0    # "be":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
