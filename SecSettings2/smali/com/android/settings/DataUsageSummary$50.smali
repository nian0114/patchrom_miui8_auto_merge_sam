.class Lcom/android/settings_ex/DataUsageSummary$50;
.super Lcom/opera/max/sdk/saving/IStateListener$Stub;
.source "DataUsageSummary.java"


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
    .line 6935
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$50;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Lcom/opera/max/sdk/saving/IStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onApkDownloadRequest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "srcPackageName"    # Ljava/lang/String;

    .prologue
    .line 6961
    return-void
.end method

.method public onSavingState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 6949
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSavingState,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6950
    if-ne p1, v3, :cond_0

    .line 6951
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$50;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 6956
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$50;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavingState()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$8800(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6957
    return-void

    .line 6953
    :cond_0
    const-string v0, "DataUsage"

    const-string v1, "onSavingState state != DataSavingHelper.SAVING_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6954
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$50;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    goto :goto_0
.end method

.method public onTunnelState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 6938
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6939
    const-string v0, "DataUsage"

    const-string v1, "TUNNEL IS OPEND"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    :cond_0
    :goto_0
    return-void

    .line 6940
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 6941
    const-string v0, "DataUsage"

    const-string v1, "TUNNEL IS COLOED"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$50;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 6943
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$50;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavingState()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$8800(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0
.end method
