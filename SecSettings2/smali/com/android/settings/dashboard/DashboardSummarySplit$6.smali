.class Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;
.super Ljava/lang/Object;
.source "DashboardSummarySplit.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->initializeLayoutBySplitBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "rightLayoutStartPosition":F
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->access$300(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    .line 503
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->access$500(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->access$500(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v1, v0, v2

    .line 505
    .local v1, "x":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 506
    const/4 v1, 0x0

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->access$500(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->access$500(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    .line 512
    .end local v1    # "x":F
    :cond_1
    return-void

    .line 500
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummarySplit$6;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/DashboardSummarySplit;->access$400(Lcom/android/settings_ex/dashboard/DashboardSummarySplit;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    goto :goto_0
.end method
