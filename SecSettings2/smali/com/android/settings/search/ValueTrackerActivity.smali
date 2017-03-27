.class public Lcom/android/settings_ex/search/ValueTrackerActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "ValueTrackerActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/search/ValueTrackerActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcom/android/settings_ex/search/ValueTrackerActivity;->setSettingsActivityContext(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public initCategories()V
    .locals 3

    .prologue
    .line 22
    const/4 v1, 0x1

    const-string v2, "main_mode"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/search/ValueTrackerActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/search/Index;->setCategories(Ljava/util/List;)V

    .line 24
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->startSearchIndexing(Landroid/app/Activity;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/settings_ex/search/ValueTrackerActivity;->finish()V

    .line 26
    return-void
.end method
