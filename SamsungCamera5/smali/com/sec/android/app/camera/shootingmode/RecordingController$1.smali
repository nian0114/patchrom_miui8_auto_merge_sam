.class Lcom/sec/android/app/camera/shootingmode/RecordingController$1;
.super Landroid/os/Handler;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 121
    :cond_0
    return-void
.end method
