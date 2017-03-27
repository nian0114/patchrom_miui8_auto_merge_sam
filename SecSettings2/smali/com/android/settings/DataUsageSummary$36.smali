.class Lcom/android/settings_ex/DataUsageSummary$36;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3725
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$36;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3728
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 3729
    .local v0, "cycle":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 3732
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$36;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 3735
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$36;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3749
    :goto_0
    return-void

    .line 3745
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$36;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings_ex/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/settings_ex/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 3747
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$36;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6700(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3754
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
