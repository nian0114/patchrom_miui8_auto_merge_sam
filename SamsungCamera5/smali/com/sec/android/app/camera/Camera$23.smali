.class Lcom/sec/android/app/camera/Camera$23;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V
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
    .line 4567
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4570
    const-string v2, "Camera5"

    const-string v3, "updateLatestMedia : updateLatestMedia***start"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4573
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4574
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Lcom/sec/android/app/camera/util/LatestMedia;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/util/LatestMedia;-><init>(Landroid/content/ContentResolver;)V

    # setter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/util/LatestMedia;)Lcom/sec/android/app/camera/util/LatestMedia;

    .line 4576
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMediaStateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4577
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4578
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4579
    const-string v2, "Camera5"

    const-string v4, "updateLatestMedia: Secure Camera case"

    invoke-static {v2, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4581
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isLastContentVideoType()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->updateSecureUriList(Z)V

    .line 4593
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v2

    if-nez v2, :cond_5

    .line 4594
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentOrientation(I)V

    .line 4598
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/util/LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentUri(Landroid/net/Uri;)V

    .line 4600
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4601
    const-string v2, "Camera5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLatestMedia : updateLatestMedia***end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    return-void

    .line 4584
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isLastContentVideoType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4585
    const-string v2, "Camera5"

    const-string v4, "updateLatestMedia: Last shot is Recording"

    invoke-static {v2, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/util/LatestMedia;->updateLatestVideo(Z)V

    goto :goto_0

    .line 4600
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4588
    :cond_4
    :try_start_2
    const-string v2, "Camera5"

    const-string v4, "updateLatestMedia: Last shot is Capture"

    invoke-static {v2, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/util/LatestMedia;->update(Z)V

    goto/16 :goto_0

    .line 4596
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$23;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentOrientation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
