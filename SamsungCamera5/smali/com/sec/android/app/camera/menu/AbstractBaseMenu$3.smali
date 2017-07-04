.class Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;
.super Ljava/lang/Object;
.source "AbstractBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 461
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    if-eqz v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/QuickView;->getCaptureFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/QuickView;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 464
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 465
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/QuickView;->getCaptureFileName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/QuickView;->getCaptureFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/menu/QuickView;->getCaptureFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, "rawCaptureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 474
    .end local v1    # "rawCaptureFile":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/QuickView;->getCaptureFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 475
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/QuickView;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 476
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 477
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->hideReview(Z)V

    .line 484
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->clearCaptureData()V

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setThumbnailUri(Landroid/net/Uri;)V

    .line 488
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 489
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 490
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail()V

    .line 491
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateQuickView()V

    .line 493
    :cond_3
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public onShareClicked()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->removeReviewTimeOutCallback()V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mReviewShowing:Z

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$3;->this$0:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->startShareViaAnimation()V

    .line 500
    return-void
.end method
