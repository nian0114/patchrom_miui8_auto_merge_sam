.class public Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/SettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1519
    iput-object p2, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 1520
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 1540
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 1541
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->access$1300(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 1532
    move v3, p2

    .local v3, "mPagerIndex":I
    move-object v2, p1

    .line 1533
    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 1534
    .local v2, "curPager":Landroid/support/v4/view/ViewPager;
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$1300(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 1535
    .local v0, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/SettingsActivity;

    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->this$0:Lcom/android/settings_ex/SettingsActivity;

    # getter for: Lcom/android/settings_ex/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/SettingsActivity;->access$1300(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/dashboard/DashboardCategory;

    iget-object v6, p0, Lcom/android/settings_ex/SettingsActivity$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v6}, Lcom/android/settings_ex/SettingsActivity;->updateTabTileView(Lcom/android/settings_ex/dashboard/DashboardCategory;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 1536
    .local v1, "categoryView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 1537
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1527
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
