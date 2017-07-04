.class Lcom/sec/android/app/camera/menu/VisualInteraction$5;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->startCameraSwitchingAnimation([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$blurImageWidth:I

.field final synthetic val$isFront:Z

.field final synthetic val$previewHeight:I

.field final synthetic val$previewWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;Landroid/graphics/Bitmap;IIIZ)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$blurImageWidth:I

    iput p4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewHeight:I

    iput p5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewWidth:I

    iput-boolean p6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$isFront:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 763
    const-string v0, "Camera5VI"

    const-string v1, "mPreviewImage Image onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$600(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$700(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$600(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$600(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$602(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;

    .line 770
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v7, 0x0

    .line 775
    const-string v2, "Camera5VI"

    const-string v3, "mPreviewImage Image onAnimationStart"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 778
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 779
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/menu/VisualInteraction;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    .line 781
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->completeWaitAsync()V

    .line 784
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$blurImageWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$blurImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$previewWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 785
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$900(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 787
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 788
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->val$isFront:Z

    if-eqz v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    .line 794
    .end local v0    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 791
    .restart local v0    # "blurBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlurImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    goto :goto_0
.end method
