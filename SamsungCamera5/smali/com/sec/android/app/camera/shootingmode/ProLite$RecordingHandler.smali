.class Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;
.super Landroid/os/Handler;
.source "ProLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/ProLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingHandler"
.end annotation


# instance fields
.field private final mPro:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/ProLite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/ProLite;)V
    .locals 1
    .param p1, "pro"    # Lcom/sec/android/app/camera/shootingmode/ProLite;

    .prologue
    .line 2211
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->mPro:Ljava/lang/ref/WeakReference;

    .line 2213
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    .prologue
    .line 2208
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->mPro:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2235
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 2217
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->mPro:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/ProLite;

    .line 2218
    .local v0, "pro":Lcom/sec/android/app/camera/shootingmode/ProLite;
    if-nez v0, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2221
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 2225
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2226
    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite;->blinkIndicatorRecIcon(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->access$400(Lcom/sec/android/app/camera/shootingmode/ProLite;Z)V

    goto :goto_0

    .line 2227
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2228
    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite;->blinkIndicatorRecTime(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->access$500(Lcom/sec/android/app/camera/shootingmode/ProLite;Z)V

    goto :goto_0
.end method
