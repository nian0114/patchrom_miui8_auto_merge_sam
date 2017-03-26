.class Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;
.super Landroid/content/BroadcastReceiver;
.source "MotionPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 317
    :cond_1
    :goto_1
    return-void

    .line 307
    :pswitch_0
    const-string v2, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f08010e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch -0x215f7beb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
