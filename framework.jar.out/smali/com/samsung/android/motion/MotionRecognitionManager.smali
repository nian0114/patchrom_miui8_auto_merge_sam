.class public Lcom/samsung/android/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "com.samsung.android.motion.MOTION_RECOGNITION_EVENT"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field public static final EVENT_ALL:I = 0x1fffff

.field public static final EVENT_CALL_POSE:I = 0x40000

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x15

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PALM_SWIPE:I = 0x400000

.field public static final EVENT_PALM_TOUCH:I = 0x200000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_SMART_RELAY:I = 0x100000

.field public static final EVENT_SMART_SCROLL:I = 0x80000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_ALWAYS:I = 0x40000000

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field private mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;

.field private mSSPEnabled:Z

.field private motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

.field private final mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final sListenerwithSSP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerwithSSP:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/motion/MotionRecognitionManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/motion/MotionRecognitionManager$1;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;)V

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const-string v2, "scontext"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSContextService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    new-instance v2, Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/hardware/scontext/SContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2}, Landroid/hardware/scontext/ISContextService;->getMotionRecognitionService()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/motion/IMotionRecognitionService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "service":Landroid/os/IBinder;
    :goto_0
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in motionService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "motionService = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :cond_1
    const-string v2, "motion_recognition"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/motion/IMotionRecognitionService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-string v3, "ro.debug_level"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .local v0, "debugLevel":I
    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, " "

    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v3, 0x4f4c

    if-ne v0, v3, :cond_2

    const-string p0, " "

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string p0, " "

    goto :goto_0

    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v3, 0x494d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x4948

    if-eq v0, v3, :cond_0

    const-string p0, " "

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/motion/MotionRecognitionManager;)Lcom/samsung/android/motion/IMotionRecognitionService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/motion/MotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/motion/MotionRecognitionManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static getMotionVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .param p0, "motion_sensor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAvailable(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .restart local v2    # "ret":I
    goto :goto_0

    .end local v2    # "ret":I
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v3, p1}, Lcom/samsung/android/motion/IMotionRecognitionService;->isAvailable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MotionRecognitionManager"

    const-string v4, "RemoteException in getSSPstatus: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x400 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
    .end sparse-switch
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "motion_events":I
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const v1, 0x3a002

    or-int/2addr v0, v1

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x51f9

    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0xc00

    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V
    .locals 14
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    if-eqz p1, :cond_3

    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-eqz v10, :cond_3

    iget-object v11, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v11

    const/4 v6, 0x0

    .local v6, "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "bregisterd":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_2

    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .local v5, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v10

    if-ne v10, p1, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "strlistener":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    and-int v10, v10, p3

    if-eqz v10, :cond_1

    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v9    # "strlistener":Ljava/lang/String;
    :cond_1
    move-object v6, v5

    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : already registered but need to update motion events / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v5    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    .end local v9    # "strlistener":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v8    # "size":I
    :cond_2
    if-eqz v2, :cond_4

    :try_start_1
    monitor-exit v11

    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    :cond_3
    :goto_3
    return-void

    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v8    # "size":I
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    or-int p3, p3, v10

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    move-object v7, v6

    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .local v7, "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    if-nez v7, :cond_a

    :try_start_2
    new-instance v6, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, p0, p1, v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_4
    :try_start_3
    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v10, p3, 0x4

    if-eqz v10, :cond_6

    :try_start_4
    iget-boolean v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z

    const/4 v12, 0x1

    if-ne v10, v12, :cond_9

    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    if-nez v10, :cond_8

    const-string v10, "MotionRecognitionManager"

    const-string v12, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v12, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v13, 0x5

    invoke-virtual {v10, v12, v13}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    :goto_5
    iget v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    and-int/lit8 p3, p3, -0x5

    :cond_6
    :goto_6
    if-eqz p3, :cond_7

    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v6, v0, v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_7
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "strlistener":Ljava/lang/String;
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", motion_events="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_8
    :try_start_6
    const-string v10, "MotionRecognitionManager"

    const-string v12, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in registerListenerEvent : "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    :try_start_8
    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v10}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_8
    :try_start_9
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SSP disabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in getSSPstatus: "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_2

    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_a
    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_4
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V

    return-void
.end method

.method public resetMotionEngine()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMotionAngle(Lcom/samsung/android/motion/MRListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 8
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/motion/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setSmartMotionAngle(Lcom/samsung/android/motion/MRListener;I)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .local v2, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1    # "i":I
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_2
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setTestSensor()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/motion/IMotionRecognitionService;->setTestSensor()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in setTestSensor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/motion/MRListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;

    .prologue
    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .local v3, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "listener_name":Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@ member "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/samsung/android/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "listener_name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_4

    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .restart local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v7

    if-ne v7, p1, :cond_6

    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .local v0, "bdisable":Z
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z

    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    iget v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    iget v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    if-gtz v7, :cond_2

    const-string v7, "MotionRecognitionManager"

    const-string v9, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v9, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v10, 0x5

    invoke-virtual {v7, v9, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    :cond_2
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unregisterListener - mMovementCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mMovementCnt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/lit8 v7, v7, -0x5

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v7, v3}, Lcom/samsung/android/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "bdisable":Z
    .end local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_4
    :goto_4
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "strlistener":Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .unregisterListener : / listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v5    # "size":I
    .end local v6    # "strlistener":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v0    # "bdisable":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5    # "size":I
    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v7}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSP disabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v7, v3}, Lcom/samsung/android/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in getSSPstatus: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in unregisterListener: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .end local v0    # "bdisable":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public unregisterListener(Lcom/samsung/android/motion/MRListener;I)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    iget-object v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "motionevents":I
    const/4 v1, 0x0

    .local v1, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .restart local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    xor-int/lit8 v7, p2, -0x1

    and-int v2, v5, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "strlistener":Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  motionevents = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "strlistener":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    :cond_2
    monitor-exit v6

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v2    # "motionevents":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "i":I
    .restart local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v2    # "motionevents":I
    .restart local v3    # "size":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public useMotionAlways(Lcom/samsung/android/motion/MRListener;Z)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method
