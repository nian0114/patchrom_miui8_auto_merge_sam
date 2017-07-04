.class Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;
.super Landroid/os/Handler;
.source "VirtualShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const v1, 0x7f080162

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
