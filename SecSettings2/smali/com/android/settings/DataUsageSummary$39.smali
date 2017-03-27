.class Lcom/android/settings_ex/DataUsageSummary$39;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 4148
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$6700(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 4154
    return-void
.end method

.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 4164
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 4165
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$2900(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 4166
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 4160
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 4175
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 4176
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$39;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 4171
    return-void
.end method
