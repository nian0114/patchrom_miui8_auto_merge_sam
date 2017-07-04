.class Lcom/sec/android/app/camera/widget/gl/AfButton$1;
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
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$100(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$000(Lcom/sec/android/app/camera/widget/gl/AfButton;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$100(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 142
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 147
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v7, 0x0

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # setter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I
    invoke-static {v0, v7}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$202(Lcom/sec/android/app/camera/widget/gl/AfButton;I)I

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_CONTROL_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$300()I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/AfButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->access$400(Lcom/sec/android/app/camera/widget/gl/AfButton;)F

    move-result v5

    new-instance v6, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/camera/widget/gl/AfButton;->startPhaseInfoAnimation(JFFLandroid/view/animation/Interpolator;Z)V

    .line 156
    return-void
.end method
