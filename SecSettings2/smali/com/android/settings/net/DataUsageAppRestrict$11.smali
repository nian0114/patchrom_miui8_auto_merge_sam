.class Lcom/android/settings_ex/net/DataUsageAppRestrict$11;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1071
    new-instance v0, Lcom/android/settings_ex/net/DataUsageAppRestrict$AppListLoader;

    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    invoke-virtual {v2}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/net/DataUsageAppRestrict$AppListLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1068
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->onLoadFinished(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/ArrayList<Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;>;>;"
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;>;"
    const-string v0, "DataUsageAppRestrict"

    const-string v1, "onLoadFinished : "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$200(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->setData(Ljava/util/ArrayList;)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->UpdateNetworkHistoricalData(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$1500(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    # invokes: Lcom/android/settings_ex/net/DataUsageAppRestrict;->DestroyLoader(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$700(Lcom/android/settings_ex/net/DataUsageAppRestrict;I)V

    .line 1083
    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$500()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 1084
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$200(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$500()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->setEnabled(Z)V

    .line 1085
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$1700(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$11;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->divider:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$1600(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/ArrayList<Lcom/android/settings_ex/net/DataUsageAppRestrict$AppItem;>;>;"
    return-void
.end method
