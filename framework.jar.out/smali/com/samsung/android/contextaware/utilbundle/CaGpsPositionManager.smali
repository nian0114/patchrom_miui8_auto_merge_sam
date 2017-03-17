.class public Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# instance fields
.field private mDisabler:Landroid/os/Handler;

.field private mEnable:Z

.field private mGpsManager:Landroid/location/LocationManager;

.field private mGpsTime:J

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLooper:Landroid/os/Looper;

.field private mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private preLatitude:D

.field private preLongitude:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->initializeManager(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->notifyListener(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # D

    .prologue
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # D

    .prologue
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private notifyListener(Landroid/location/Location;)V
    .locals 19
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v18

    .local v18, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .local v17, "bun":Landroid/os/Bundle;
    const/16 v16, 0x0

    .local v16, "numSat":I
    if-eqz v17, :cond_1

    const-string v2, "satellites"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v12

    .local v12, "distance":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    move-object/from16 v5, v18

    invoke-interface/range {v3 .. v16}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final enable()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iget-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    return v0
.end method

.method public notifyCurrentPositionObserver()V
    .locals 0

    .prologue
    return-void
.end method

.method public registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    return-void
.end method

.method public setGpsUpdateTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    return-void
.end method

.method public final terminateManager()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unregisterCurrentPositionObserver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    return-void
.end method
