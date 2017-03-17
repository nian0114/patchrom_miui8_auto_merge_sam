.class Lcom/android/server/wifi/WifiServiceImpl$12;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkSensorStatus(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 3983
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3986
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 3987
    .local v2, "scontext":Landroid/hardware/scontext/SContext;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mActivityTrackerListener: onSContextChanged(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_0

    .line 3989
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityTrackerContext()Landroid/hardware/scontext/SContextActivityTracker;

    move-result-object v1

    .line 3990
    .local v1, "atContext":Landroid/hardware/scontext/SContextActivityTracker;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextActivityTracker;->getAccuracy()I

    move-result v0

    .line 3992
    .local v0, "accuracy":I
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextActivityTracker;->getStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4045
    .end local v0    # "accuracy":I
    .end local v1    # "atContext":Landroid/hardware/scontext/SContextActivityTracker;
    :cond_0
    :goto_0
    return-void

    .line 3994
    .restart local v0    # "accuracy":I
    .restart local v1    # "atContext":Landroid/hardware/scontext/SContextActivityTracker;
    :pswitch_0
    const-string v3, "WifiService"

    const-string v4, "ACTIVITY_STATUS_UNKNOWN "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4302(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 3996
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    if-eqz v3, :cond_0

    .line 3997
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v6, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 3998
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiScanWithSensor(I)Z

    goto :goto_0

    .line 4003
    :pswitch_1
    const-string v3, "WifiService"

    const-string v4, "ACTIVITY_STATUS_STATIONARY "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4302(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 4005
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    if-eqz v3, :cond_0

    .line 4006
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v6, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 4007
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiScanWithSensor(I)Z

    goto :goto_0

    .line 4012
    :pswitch_2
    const-string v3, "WifiService"

    const-string v4, "ACTIVITY_STATUS_WALK "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4302(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 4014
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    if-eq v3, v7, :cond_0

    .line 4015
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v7, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 4016
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiScanWithSensor(I)Z

    goto :goto_0

    .line 4021
    :pswitch_3
    const-string v3, "WifiService"

    const-string v4, "ACTIVITY_STATUS_RUN "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$4302(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 4023
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    if-eq v3, v8, :cond_0

    .line 4024
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v8, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 4025
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v8}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiScanWithSensor(I)Z

    goto :goto_0

    .line 4030
    :pswitch_4
    if-lez v0, :cond_1

    .line 4031
    const-string v3, "WifiService"

    const-string v4, "[ACTIVITY_STATUS_VEHICLE] MID or HIGH"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$4302(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 4033
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/wifi/WifiServiceImpl;->startMs:J

    .line 4034
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-wide v6, v5, Lcom/android/server/wifi/WifiServiceImpl;->startMs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    if-eq v3, v9, :cond_0

    .line 4036
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput v9, v3, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 4037
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$12;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v9}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiScanWithSensor(I)Z

    goto/16 :goto_0

    .line 4040
    :cond_1
    const-string v3, "WifiService"

    const-string v4, "[ACTIVITY_STATUS_VEHICLE] LOW"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3992
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
