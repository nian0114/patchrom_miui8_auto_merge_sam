.class Lcom/android/settings_ex/location/SatelliteView$2;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/SatelliteView;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/4 v5, 0x0

    .line 346
    const/4 v4, 0x3

    if-ne v4, p1, :cond_2

    .line 348
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    iget-object v4, v4, Lcom/android/settings_ex/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v4, :cond_1

    .line 349
    const-string v4, "GPS_SATELLITE_VIEW"

    const-string v5, "onGpsStatusChanged GpsStatus.GPS_EVENT_FIRST_FIX catch error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    iget-object v4, v4, Lcom/android/settings_ex/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 353
    .local v0, "gs":Landroid/location/GpsStatus;
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v5

    # setter for: Lcom/android/settings_ex/location/SatelliteView;->ttff:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/location/SatelliteView;->access$002(Lcom/android/settings_ex/location/SatelliteView;I)I

    goto :goto_0

    .line 355
    .end local v0    # "gs":Landroid/location/GpsStatus;
    :cond_2
    const/4 v4, 0x4

    if-ne v4, p1, :cond_0

    .line 360
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    iget-object v4, v4, Lcom/android/settings_ex/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v4, :cond_3

    .line 362
    const-string v4, "GPS_SATELLITE_VIEW"

    const-string v5, "onGpsStatusChanged GpsStatus.GPS_EVENT_SATELLITE_STATUS catch error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    iget-object v4, v4, Lcom/android/settings_ex/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 366
    .restart local v0    # "gs":Landroid/location/GpsStatus;
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 368
    .local v1, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/settings_ex/location/SatelliteView;->sv_list_mask:I

    .line 370
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 373
    .local v3, "sat":Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 374
    .local v2, "prn":I
    # getter for: Lcom/android/settings_ex/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings_ex/location/SatelliteView;->access$100()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 376
    const-string v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRN NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_5
    const/16 v4, 0x20

    if-gt v2, v4, :cond_4

    .line 381
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    iget-object v4, v4, Lcom/android/settings_ex/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    add-int/lit8 v5, v2, -0x1

    aput-object v3, v4, v5

    .line 382
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    iget v5, v4, Lcom/android/settings_ex/location/SatelliteView;->sv_list_mask:I

    const/4 v6, 0x1

    add-int/lit8 v7, v2, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/settings_ex/location/SatelliteView;->sv_list_mask:I

    goto :goto_1

    .line 384
    .end local v2    # "prn":I
    .end local v3    # "sat":Landroid/location/GpsSatellite;
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/location/SatelliteView$2;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/SatelliteView;->showSVStatus()V

    goto/16 :goto_0
.end method
