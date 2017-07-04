.class Lcom/sec/android/app/camera/menu/QuickView$2;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/QuickView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/QuickView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    const-string v0, "QuickView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchGalleryRunnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/QuickView;->access$100(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCoverCameraGallery()V

    .line 139
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    const-string v1, "quickview"

    # setter for: Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->access$102(Lcom/sec/android/app/camera/menu/QuickView;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/16 v1, 0x1d

    const/16 v2, 0x1c20

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/QuickView;->access$100(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/QuickView;->access$300(Lcom/sec/android/app/camera/menu/QuickView;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    # getter for: Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$000(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideQuickView()V

    goto :goto_1
.end method
