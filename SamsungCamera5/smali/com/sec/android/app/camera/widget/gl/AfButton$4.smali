.class Lcom/sec/android/app/camera/widget/gl/AfButton$4;
.super Ljava/lang/Object;
.source "AfButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/AfButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$100(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$600(Lcom/sec/android/app/camera/widget/gl/AfButton;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$100(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 229
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$202(Lcom/sec/android/app/camera/widget/gl/AfButton;I)I

    .line 240
    return-void
.end method
