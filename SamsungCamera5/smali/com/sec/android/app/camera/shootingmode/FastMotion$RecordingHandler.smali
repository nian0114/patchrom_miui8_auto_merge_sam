.class Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;
.super Landroid/os/Handler;
.source "FastMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/FastMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingHandler"
.end annotation


# instance fields
.field private final mFastMotion:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/FastMotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/FastMotion;)V
    .locals 1
    .param p1, "fastMotion"    # Lcom/sec/android/app/camera/shootingmode/FastMotion;

    .prologue
    .line 870
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 871
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->mFastMotion:Ljava/lang/ref/WeakReference;

    .line 872
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->mFastMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 893
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/FastMotion$RecordingHandler;->mFastMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/FastMotion;

    .line 877
    .local v0, "fastMotion":Lcom/sec/android/app/camera/shootingmode/FastMotion;
    if-nez v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/FastMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 884
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 885
    # invokes: Lcom/sec/android/app/camera/shootingmode/FastMotion;->blinkRecIconIndicator(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/FastMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/FastMotion;Z)V

    goto :goto_0

    .line 886
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 887
    # invokes: Lcom/sec/android/app/camera/shootingmode/FastMotion;->blinkRecRemainTimeIndicator(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/FastMotion;->access$200(Lcom/sec/android/app/camera/shootingmode/FastMotion;Z)V

    goto :goto_0
.end method
