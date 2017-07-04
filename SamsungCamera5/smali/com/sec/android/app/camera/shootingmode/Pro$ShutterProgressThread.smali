.class public Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;
.super Ljava/lang/Thread;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShutterProgressThread"
.end annotation


# instance fields
.field private mIsStop:Z

.field private mSleepTimeMillis:J

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;J)V
    .locals 2
    .param p2, "sleepTimeMillis"    # J

    .prologue
    .line 3731
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    .line 3732
    const-string v0, "ShutterProgressThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3728
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    .line 3729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    .line 3733
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setPriority(I)V

    .line 3735
    iput-wide p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    .line 3736
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .prologue
    .line 3727
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isStopping()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;
    .param p1, "x1"    # J

    .prologue
    .line 3727
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setSleepTimeMillis(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .prologue
    .line 3727
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->stopThread()V

    return-void
.end method

.method private getSleepTimeMillis()J
    .locals 2

    .prologue
    .line 3745
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    return-wide v0
.end method

.method private isStopping()Z
    .locals 1

    .prologue
    .line 3753
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    return v0
.end method

.method private setSleepTimeMillis(J)V
    .locals 1
    .param p1, "sleepTimeMillis"    # J

    .prologue
    .line 3749
    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    .line 3750
    return-void
.end method

.method private stopThread()V
    .locals 2

    .prologue
    .line 3757
    const-string v0, "Pro"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    .line 3759
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->interrupt()V

    .line 3760
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3740
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3741
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->runShutterProgress(J)V

    .line 3742
    return-void
.end method
