.class Lcom/sec/android/app/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 574
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x0

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLightValue:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-gt v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    float-to-int v1, v1

    # setter for: Lcom/sec/android/app/camera/Camera;->mLightValue:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$502(Lcom/sec/android/app/camera/Camera;I)I

    .line 580
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Light : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d lux"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLightValue:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLightValue:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->initCheckInsidePocket()V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->startCheckInsidePocket()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$6;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessage(I)Z

    .line 589
    :cond_1
    return-void
.end method
