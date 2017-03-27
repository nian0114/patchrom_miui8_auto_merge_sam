.class Lcom/android/settings_ex/DataUsageSummary$37;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settings_ex/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 4002
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4005
    new-instance v0, Lcom/android/settings_ex/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$6800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/net/ChartData;)V
    .locals 6
    .param p2, "data"    # Lcom/android/settings_ex/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;",
            "Lcom/android/settings_ex/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_ex/net/ChartData;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4010
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v1, p2}, Lcom/android/settings_ex/DataUsageSummary;->access$102(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;

    .line 4011
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 4012
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 4015
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6900(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4016
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$7000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4017
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setIsAppDetailMode(Z)V

    .line 4018
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$7100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindSavedDetailData(Landroid/net/NetworkStatsHistory;Lcom/android/settings_ex/datasaving/DataSavingHelper;)V

    .line 4027
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v1, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 4029
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$7200(Lcom/android/settings_ex/DataUsageSummary;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4035
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_1

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->clickAppItem:Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$6500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4036
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$7300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4037
    # setter for: Lcom/android/settings_ex/DataUsageSummary;->clickAppItem:Z
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$6502(Z)Z

    .line 4039
    :cond_1
    return-void

    .line 4020
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setIsAppDetailMode(Z)V

    .line 4021
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$7000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-result-object v2

    iget v2, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setCurrentUid(I)V

    .line 4022
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$7100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindSavedDetailData(Landroid/net/NetworkStatsHistory;Lcom/android/settings_ex/datasaving/DataSavingHelper;)V

    goto :goto_0

    .line 4030
    :catch_0
    move-exception v0

    .line 4031
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4002
    check-cast p2, Lcom/android/settings_ex/net/ChartData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary$37;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_ex/net/ChartData;>;"
    const/4 v1, 0x0

    .line 4043
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$102(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;

    .line 4044
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 4045
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 4048
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsSupportDataCompression:Z
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$6900(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4049
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$37;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$6600(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindSavedDetailData(Landroid/net/NetworkStatsHistory;Lcom/android/settings_ex/datasaving/DataSavingHelper;)V

    .line 4051
    :cond_0
    return-void
.end method
