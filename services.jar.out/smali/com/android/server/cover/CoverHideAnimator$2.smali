.class Lcom/android/server/cover/CoverHideAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverHideAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverHideAnimator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$000(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFadeInAnimationEnd mCallbackRunnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/cover/CoverHideAnimator;->access$300(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$300(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$400(Lcom/android/server/cover/CoverHideAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/cover/CoverHideAnimator;->access$300(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;->access$302(Lcom/android/server/cover/CoverHideAnimator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$500(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$500(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/server/cover/CoverHideAnimator;->access$700(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;
    invoke-static {v1}, Lcom/android/server/cover/CoverHideAnimator;->access$600(Lcom/android/server/cover/CoverHideAnimator;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
