.class Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;
.super Landroid/os/Handler;
.source "Dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingHandler"
.end annotation


# instance fields
.field private final mDual:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Dual;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 1
    .param p1, "dual"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 2119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->mDual:Ljava/lang/ref/WeakReference;

    .line 2121
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->mDual:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 2125
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->mDual:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Dual;

    .line 2126
    .local v0, "dual":Lcom/sec/android/app/camera/shootingmode/Dual;
    if-nez v0, :cond_1

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 2134
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    .line 2135
    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual;->blinkIndicatorRecIcon(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$400(Lcom/sec/android/app/camera/shootingmode/Dual;Z)V

    goto :goto_0

    .line 2136
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2137
    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual;->blinkIndicatorRecTime(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$500(Lcom/sec/android/app/camera/shootingmode/Dual;Z)V

    goto :goto_0
.end method
