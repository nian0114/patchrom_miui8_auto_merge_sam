.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 270
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->setFrontCamera(Z)V

    .line 271
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->initialize(I)V

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    add-int/lit16 v4, v0, 0x1f40

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "libName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    add-int/lit16 v4, v0, 0x1f40

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "EffectThumbnailListMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "libName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "EffectThumbnailListMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 279
    :cond_0
    const-string v3, "EffectThumbnailListMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is invalid filter! [FilterID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit16 v5, v0, 0x1f40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    .end local v1    # "libName":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    return-void
.end method
