.class Landroid/widget/AbsHorizontalListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView$FlingRunnable;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mActivePointerId:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1700(Landroid/widget/AbsHorizontalListView;)I

    move-result v0

    .local v0, "activeId":I
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1800(Landroid/widget/AbsHorizontalListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1900(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    .local v1, "scroller":Landroid/widget/OverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$2000(Landroid/widget/AbsHorizontalListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v3, v4

    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$2100(Landroid/widget/AbsHorizontalListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const-wide/16 v6, 0x28

    invoke-virtual {v4, p0, v6, v7}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;->this$1:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
