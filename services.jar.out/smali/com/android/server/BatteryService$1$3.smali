.class Lcom/android/server/BatteryService$1$3;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$1;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v3, v3, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v3, v3, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v5, v3, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "led_indicator_charing"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v0, v3, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    # setter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    iget-object v3, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v3, v3, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "led_indicator_low_battery"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v0, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v3, v1}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Led Charging Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v3, v3, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Led Low Battery Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v3, v3, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
