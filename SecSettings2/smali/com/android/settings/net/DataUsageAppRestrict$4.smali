.class Lcom/android/settings_ex/net/DataUsageAppRestrict$4;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/net/DataUsageAppRestrict;
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
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

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
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$600(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 2
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->UpdateNetworkHistoricalBackgroundData(Landroid/net/NetworkStats;I)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    # invokes: Lcom/android/settings_ex/net/DataUsageAppRestrict;->DestroyLoader(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$700(Lcom/android/settings_ex/net/DataUsageAppRestrict;I)V

    .line 443
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 431
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/net/DataUsageAppRestrict$4;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    return-void
.end method
