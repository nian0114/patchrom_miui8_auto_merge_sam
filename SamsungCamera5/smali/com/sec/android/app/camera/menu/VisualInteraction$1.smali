.class Lcom/sec/android/app/camera/menu/VisualInteraction$1;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "Camera5VI"

    const-string v1, "mBlackOverlay onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlayParentViewGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$002(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLViewGroup;)Lcom/samsung/android/glview/GLViewGroup;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$1;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mBlackOverlay:Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$100(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 176
    return-void
.end method
