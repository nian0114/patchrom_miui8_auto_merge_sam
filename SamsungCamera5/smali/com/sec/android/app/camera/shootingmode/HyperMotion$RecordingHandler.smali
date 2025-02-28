.class Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;
.super Landroid/os/Handler;
.source "HyperMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/HyperMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingHandler"
.end annotation


# instance fields
.field private final mHyperMotion:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/HyperMotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V
    .locals 1
    .param p1, "hyperMotion"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .prologue
    .line 814
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 815
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->mHyperMotion:Ljava/lang/ref/WeakReference;

    .line 816
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->mHyperMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 835
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 820
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->mHyperMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .line 821
    .local v0, "hyperMotion":Lcom/sec/android/app/camera/shootingmode/HyperMotion;
    if-nez v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 828
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 829
    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/HyperMotion;->blinkRecIconIndicator(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->access$400(Lcom/sec/android/app/camera/shootingmode/HyperMotion;Z)V

    goto :goto_0
.end method
