.class Lcom/sec/android/app/camera/Camera$24;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->updateQuickView()V
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
    .line 4611
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 4614
    const-string v6, "Camera5"

    const-string v7, "updateQuickView : updateQuickView***start"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isPausing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4616
    :cond_0
    const-string v6, "Camera5"

    const-string v7, "updateQuickView : return, isPausing"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    :goto_0
    return-void

    .line 4619
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4621
    .local v4, "startTime":J
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    .line 4622
    .local v1, "lastCaptureFileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 4623
    .local v2, "lastContentUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 4624
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 4626
    .local v3, "orientation":I
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/LatestMedia;->getImagePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4627
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v6

    if-nez v6, :cond_3

    .line 4628
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/LatestMedia;->getId()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-static {v6, v8, v9, v10, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4629
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v3

    .line 4636
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->updateQuickView(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v6, v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    .line 4637
    const-string v6, "Camera5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateQuickView : updateQuickView***end "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsQuickViewUpdated:Z
    invoke-static {v6, v10}, Lcom/sec/android/app/camera/Camera;->access$3502(Lcom/sec/android/app/camera/Camera;Z)Z

    goto/16 :goto_0

    .line 4631
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$24;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4632
    const/4 v3, 0x0

    goto :goto_1
.end method
