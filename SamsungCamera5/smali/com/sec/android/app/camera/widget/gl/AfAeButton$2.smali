.class Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;
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
    .line 151
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->access$000(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->access$100(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 161
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 166
    const-string v0, "AfAeButton"

    const-string v1, "AE PORTRAIT ANIMATION"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method
