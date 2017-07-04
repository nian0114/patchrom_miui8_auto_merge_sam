.class public abstract Lcom/sec/android/app/camera/shootingmode/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$SecImagingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
    }
.end annotation


# static fields
.field protected static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final CHECK_RECORDING_TICK_TIME_INTERVAL:I = 0x64

.field private static final CHECK_RECORDING_TICK_TIME_MSG:I = 0x1

.field protected static final DB_RECORDINGMODE_FAST_MOTION:Ljava/lang/String; = "2"

.field protected static final DB_RECORDINGMODE_HYPER_MOTION:Ljava/lang/String; = "5"

.field protected static final DB_RECORDINGMODE_KEY:Ljava/lang/String; = "recording_mode"

.field protected static final DB_RECORDINGMODE_MULTI_TRACK:Ljava/lang/String; = "4"

.field protected static final DB_RECORDINGMODE_SLOW_MOTION:Ljava/lang/String; = "1"

.field protected static final DEFAULT_RECORDING_FPS:I = 0x7530

.field private static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field private static final ERROR_RECORDING:I = -0x4

.field protected static final MINIMUM_REMAIN_TIME_TO_SNAPSHOT:I = 0x5

.field protected static final ONE_SECOND:I = 0x1

.field protected static final RECORDING_EVENT_CANCELLED:I = 0x4

.field protected static final RECORDING_EVENT_PAUSED:I = 0x2

.field protected static final RECORDING_EVENT_RESUMED:I = 0x1

.field protected static final RECORDING_EVENT_STARTED:I = 0x0

.field protected static final RECORDING_EVENT_STOPPED:I = 0x3

.field protected static final RECORDING_TICK_INTERVAL_DEFAULT:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MAX:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MIN:I = 0x64

.field protected static final SECONDS_IN_AN_HOUR:I = 0xe10

.field protected static final SECONDS_IN_A_DAY:I = 0x15180

.field protected static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "RecordingController"

.field protected static final UNLIMITED_RECORDING_TIME:I = -0x1


# instance fields
.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentRecordingFileSize:J

.field private mCurrentRecordingFileTime:J

.field private mCurrentRecordingTimeInMilliSecond:J

.field protected mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsRecordingRestrictedByCallState:Z

.field private mIsRecordingRestrictedByOverHeat:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxRecordingTimeLimitByStorage:I

.field private mMaxRecordingTimeLimitBySystem:I

.field protected mMaxRecordingTimeLimitInSecond:I

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field protected mTickInterval:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 94
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 96
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 97
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 98
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 100
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .line 103
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 104
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 105
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    .line 107
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 109
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 113
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 210
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method private checkRecordingTickTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoFileLengthInByte()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 534
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_3

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 539
    :cond_3
    return-void
.end method

.method private restrictRecording(Z)V
    .locals 1
    .param p1, "isRestricted"    # Z

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    .line 543
    return-void
.end method

.method private restrictRecording(ZZ)V
    .locals 3
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    const/4 v2, 0x0

    .line 546
    if-eqz p1, :cond_1

    .line 547
    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : true"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingRestricted(ZZ)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v0, :cond_0

    .line 551
    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : false"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingRestricted(ZZ)V

    goto :goto_0
.end method

.method private startRecordingTickTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 562
    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    .line 563
    return-void
.end method

.method private updateMaxRecordingTimeLimit()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v0

    if-lez v0, :cond_2

    .line 567
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 568
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0

    .line 572
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v0, :cond_4

    .line 573
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    if-ge v0, v1, :cond_3

    .line 574
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0

    .line 576
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0

    .line 578
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v0, :cond_0

    .line 579
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0
.end method


# virtual methods
.method protected abstract cancelRecording()V
.end method

.method protected finishRecordingPreviewVI()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleRequestNotifyPreviewStarted()V

    goto :goto_0
.end method

.method protected getCurrentRecordingFileSize()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method protected getCurrentRecordingFileTimeInSecond()J
    .locals 4

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCurrentRecordingTimeInMilliSecond()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    return-wide v0
.end method

.method protected getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method

.method protected isRecordingControlAvailable()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRecordingRestricted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 382
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - over heat temperature"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return v0

    .line 386
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 387
    :cond_2
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - calling"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeLimited()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    .line 402
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    .line 406
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - system limitation"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    .line 410
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - low storage"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isSnapShotAvailable()Z
.end method

.method protected limitRecordingTimeBySystem(I)V
    .locals 1
    .param p1, "second"    # I

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 420
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 421
    return-void
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .param p1, "arg0"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 215
    if-ne p2, v2, :cond_2

    .line 216
    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 222
    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_3

    .line 224
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onStopRecordingRequested(Z)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 6
    .param p1, "arg0"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 232
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 233
    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "RecordingController"

    const-string v1, "onInfo - already scheduled to stop video recording so returned."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoFileLengthInByte()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxDurationReached()V

    goto :goto_0

    .line 241
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3

    .line 242
    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    .line 244
    :cond_3
    const/16 v0, 0x384

    if-ne p2, v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFileLengthInByte(J)V

    goto :goto_0

    .line 246
    :cond_4
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoRecordingTimeInMilliSecond(J)V

    .line 248
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 249
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-nez p3, :cond_0

    .line 251
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 252
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    goto :goto_0
.end method

.method public onMediaRecorderPrepared(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 0
    .param p1, "mediaRecorder"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateStorageStatus()V

    .line 261
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTimeLimit()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onMediaRecorderPreparedEvent(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V

    .line 263
    return-void
.end method

.method protected abstract onMediaRecorderPreparedEvent(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
.end method

.method public onRecordingCancelled()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 267
    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 269
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 270
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 271
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 272
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 273
    return-void
.end method

.method protected abstract onRecordingEvent(I)V
.end method

.method protected abstract onRecordingMaxDurationReached()V
.end method

.method protected abstract onRecordingMaxFileSizeReached()V
.end method

.method public onRecordingPaused()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "RecordingController"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 279
    return-void
.end method

.method protected abstract onRecordingRestricted(ZZ)V
.end method

.method public onRecordingResumed()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "RecordingController"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 286
    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "RecordingController"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 293
    return-void
.end method

.method public onRecordingStopped()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 297
    const-string v0, "RecordingController"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 299
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 300
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 301
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 302
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 303
    return-void
.end method

.method protected abstract onRecordingTick(JJ)V
.end method

.method public onSecImagingString(Ljava/lang/String;)V
    .locals 6
    .param p1, "mString"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v1, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSecImagingString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v1, "multiduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "duration":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    int-to-long v4, v0

    invoke-interface {v1, v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoRecordingTimeInMilliSecond(J)V

    .line 311
    if-nez v0, :cond_0

    .line 312
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 313
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    .line 314
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    .line 330
    .end local v0    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v1, "multimaxduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const-string v1, "RecordingController"

    const-string v4, "onSecImagingString - MAX_DURATION_REACHED"

    invoke-static {v1, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    .restart local v0    # "duration":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    int-to-long v4, v0

    invoke-interface {v1, v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoRecordingTimeInMilliSecond(J)V

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxDurationReached()V

    goto :goto_0

    .line 321
    .end local v0    # "duration":I
    :cond_2
    const-string v1, "multimaxsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const-string v1, "RecordingController"

    const-string v4, "onSecImagingString - MAX_FILESIZE_REACHED"

    invoke-static {v1, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 324
    .local v2, "size":J
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFileLengthInByte(J)V

    .line 325
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    .line 326
    .end local v2    # "size":J
    :cond_3
    const-string v1, "multisize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 328
    .restart local v2    # "size":J
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFileLengthInByte(J)V

    goto :goto_0
.end method

.method protected abstract onStopRecordingRequested(Z)V
.end method

.method public onVideoDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method protected abstract onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
.end method

.method public onVideoStoringPrepared()V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onVideoStoringPreparedEvent()V

    .line 340
    return-void
.end method

.method protected abstract onVideoStoringPreparedEvent()V
.end method

.method protected registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x1

    .line 442
    const-string v1, "RecordingController"

    const-string v2, "registerRecordingController"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 446
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 447
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v1, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "camera.action.COOLDOWN_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "camera.action.COVER_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMediaRecorderListener(Ljava/lang/Object;)V

    .line 461
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 467
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 469
    :cond_1
    return-void
.end method

.method protected registerRecordingControllerOnSecImaging()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/sec/android/seccamera/SecCamera$SecImagingEventListener;)V

    .line 473
    return-void
.end method

.method protected setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .prologue
    .line 370
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingState : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .line 372
    return-void
.end method

.method protected abstract startRecording()V
.end method

.method protected startRecordingPreviewVI()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetOneShotPreviewCallback()V

    goto :goto_0
.end method

.method protected abstract stopRecording()V
.end method

.method protected abstract stopRecordingForced()V
.end method

.method protected stopRecordingTickTimer()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    return-void
.end method

.method protected unregisterRecordingController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 495
    const-string v0, "RecordingController"

    const-string v1, "unregisterRecordingController"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMediaRecorderListener(Ljava/lang/Object;)V

    .line 505
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 506
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 507
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 508
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 509
    return-void
.end method

.method protected updateStorageStatus()V
    .locals 10

    .prologue
    const-wide v8, 0x3fc999999999999aL    # 0.2

    .line 512
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    .line 514
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAvailableStorage()J

    move-result-wide v0

    .line 515
    .local v0, "available":J
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/StorageUtils;->getTotalStorage(I)J

    move-result-wide v2

    .line 517
    .local v2, "total":J
    const-string v4, "RecordingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStorageStatus : Available Storage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", total storage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-double v6, v2

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Remain RecTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    long-to-double v4, v0

    long-to-double v6, v2

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    const/16 v5, 0xe10

    if-ge v4, v5, :cond_0

    .line 520
    const-string v4, "RecordingController"

    const-string v5, "onRecordingStarted : low storage"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    goto :goto_0
.end method
