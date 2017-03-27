.class Lcom/android/settings_ex/DataUsageSummary$49;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 6895
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6898
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateDataCompressionSwitchView()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$8900(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6899
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavedTvState()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$9000(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6900
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6901
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-boolean v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mIsChartFragment:Z

    if-eqz v0, :cond_0

    .line 6902
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateChartSavedTV(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$9100(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 6903
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$49;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateAppSavedTVContainer(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/DataUsageSummary;->access$9200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 6905
    :cond_0
    return-void

    .line 6903
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
