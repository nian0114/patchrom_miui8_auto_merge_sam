.class Landroid/transition/Visibility$DisappearListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/Animator$AnimatorPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mFinalVisibilitySet:Z

.field private final mIsForcedVisibility:Z

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "isForcedVisibility"    # Z

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 510
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    .line 511
    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 514
    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 515
    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    .line 516
    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 519
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 521
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    .prologue
    .line 573
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 574
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 586
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 587
    return-void

    .line 576
    :cond_1
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 579
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 582
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    goto :goto_0
.end method

.method private suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez v0, :cond_0

    .line 591
    iput-boolean p1, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 592
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 594
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 540
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 552
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 553
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 525
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 528
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 544
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 532
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 535
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 548
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 558
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 564
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 570
    return-void
.end method
