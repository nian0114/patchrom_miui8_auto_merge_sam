.class Lcom/sec/android/app/camera/widget/gl/AfAeButton$3;
.super Ljava/lang/Object;
.source "AfAeButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/AfAeButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->access$200(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->access$300(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 182
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 192
    const-string v0, "AfAeButton"

    const-string v1, "AF LANDSCAPE ANIMATION"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
