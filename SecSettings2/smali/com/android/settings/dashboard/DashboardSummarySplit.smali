.class public Lcom/android/settings/dashboard/DashboardSummarySplit;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardSummarySplit.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static mPreferToolbar:Landroid/widget/Toolbar;

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private InitialDashboardId:J

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mArrayTileView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/DashboardTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboard:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainContainerView:[Landroid/view/ViewGroup;

.field private mMainToolbar:Landroid/widget/Toolbar;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateLayoutBySplitChange:Z

.field private tilesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUserUpdateSplit:Z

    .line 118
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 108
    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    .line 136
    iput v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->tilesCount:I

    .line 143
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummarySplit$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$1;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummarySplit$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummarySplit$2;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummarySplit;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardSummarySplit;)Lcom/android/settings/dashboard/DashboardTileView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummarySplit;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummarySplit;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummarySplit;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummarySplit;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummarySplit;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method private getSelectedTopLevelDashboardId(I)J
    .locals 6
    .param p1, "Rank"    # I

    .prologue
    .line 984
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 985
    const/16 v0, 0x400

    .line 986
    .local v0, "DashboardRank":I
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    .line 987
    .local v1, "dashboardTile":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 988
    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v0

    .line 994
    :cond_0
    :goto_1
    if-ne v0, p1, :cond_2

    .line 995
    iget-wide v4, v1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 998
    .end local v0    # "DashboardRank":I
    .end local v1    # "dashboardTile":Lcom/android/settings/dashboard/DashboardTile;
    :goto_2
    return-wide v4

    .line 989
    .restart local v0    # "DashboardRank":I
    .restart local v1    # "dashboardTile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_1
    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "targetPkg":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 984
    .end local v3    # "targetPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 998
    .end local v0    # "DashboardRank":I
    .end local v1    # "dashboardTile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private initializeLayoutBySplitBar()V
    .locals 10

    .prologue
    .line 463
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 465
    .local v0, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 467
    .local v2, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 469
    .local v4, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 470
    .local v1, "leftPanelWeight":F
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 471
    .local v3, "rightPanelWeight":F
    add-float v6, v1, v3

    .line 474
    .local v6, "weightSum":F
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.android.settings_preferences"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 476
    .local v5, "sharedPreference":Landroid/content/SharedPreferences;
    const-string v7, "split_bar_left_wegigh"

    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    sput v7, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    .line 481
    sget v7, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 482
    sget v7, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 483
    sget v7, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    sub-float v7, v6, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 484
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    .end local v0    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v1    # "leftPanelWeight":F
    .end local v2    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "rightPanelWeight":F
    .end local v4    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "sharedPreference":Landroid/content/SharedPreferences;
    .end local v6    # "weightSum":F
    :cond_0
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v7, :cond_1

    .line 490
    new-instance v7, Lcom/android/settings/dashboard/DashboardSummarySplit$6;

    invoke-direct {v7, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$6;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V

    iput-object v7, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 516
    :cond_1
    return-void
.end method

.method private rebuildMainContainer(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 394
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 396
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v2, p1

    .line 400
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    const-string v6, "main_mode"

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 403
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 404
    .local v14, "count":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainContainerView:[Landroid/view/ViewGroup;

    .line 405
    new-array v2, v14, [Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainContainerView:[Landroid/view/ViewGroup;

    .line 407
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_4

    .line 408
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/dashboard/DashboardCategory;

    .line 410
    .local v10, "category":Lcom/android/settings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040086

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 413
    .local v12, "categoryView":Landroid/view/View;
    const v2, 0x7f0d016f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 414
    const v2, 0x7f0d0172

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    const v2, 0x7f0d0171

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 417
    .local v11, "categoryLabel":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->tilesCount:I

    if-nez v2, :cond_0

    if-nez v18, :cond_0

    .line 418
    const-string v2, "DashboardSummarySplit"

    const-string v3, "add_quick_settings_container shown case so remove first category"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainContainerView:[Landroid/view/ViewGroup;

    const v2, 0x7f0d0173

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v18

    .line 425
    const v2, 0x7f0d016f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 426
    .local v13, "categorydivider":Landroid/view/View;
    if-nez v18, :cond_1

    .line 427
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :cond_1
    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v22

    .line 430
    .local v22, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v15, v0, :cond_3

    .line 431
    invoke-virtual {v10, v15}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 433
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v19, Lcom/android/settings/dashboard/DashboardTileView;

    iget-wide v2, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;I)V

    .line 434
    .local v19, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    iget-wide v2, v10, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v8, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/dashboard/DashboardSummarySplit;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 437
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 439
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v18

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 443
    sget-wide v2, Lcom/android/settings/Utils;->focusedTileId:J

    iget-wide v6, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 444
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->requestFocus()Z

    .line 430
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 449
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v19    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 407
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 452
    .end local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v11    # "categoryLabel":Landroid/widget/TextView;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v15    # "i":I
    .end local v22    # "tilesCount":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 453
    .local v16, "delta":J
    const-string v2, "DashboardSummarySplit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const-string v0, "DashboardSummarySplit"

    const-string v1, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildMainContainer(Landroid/content/Context;)V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->setInitialFragment()V

    .line 355
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummarySplit$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dashboard/DashboardSummarySplit$5;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setInitialFragment()V
    .locals 20

    .prologue
    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v2, :cond_1

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    iget-wide v10, v2, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToTile(J)V

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    const-wide/16 v18, 0x0

    cmp-long v2, v10, v18

    if-eqz v2, :cond_2

    .line 933
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToTile(J)V

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 936
    .local v16, "intent":Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 937
    .local v14, "cn":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 939
    .local v13, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTileView;->performClick()Z

    goto :goto_0

    .line 944
    :cond_3
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, "initialFragmentName":Ljava/lang/String;
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 948
    .local v4, "initialArguments":Landroid/os/Bundle;
    const-string v2, ":settings:show_fragment_title_resid"

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 950
    .local v7, "initialTitleResId":I
    const-string v2, ":settings:show_fragment_title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 952
    .local v8, "initialTitle":Ljava/lang/String;
    if-gtz v7, :cond_4

    if-nez v8, :cond_4

    .line 954
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/ActivityInfo;->labelRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_4
    :goto_1
    const-string v2, ":settings:top_level_dashboard_rank"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 964
    .local v17, "topLevelDashboardRank":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v5, ":settings:prefs"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 967
    if-eqz v17, :cond_6

    .line 968
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getSelectedTopLevelDashboardId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    .line 976
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToTile(J)V

    .line 977
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 956
    .end local v17    # "topLevelDashboardRank":I
    :catch_0
    move-exception v15

    .line 957
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "initialTitle":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "initialTitle":Ljava/lang/String;
    goto :goto_1

    .line 970
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v17    # "topLevelDashboardRank":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 971
    .local v12, "activity":Landroid/app/Activity;
    instance-of v2, v12, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_5

    .line 972
    check-cast v12, Lcom/android/settings/SettingsActivity;

    .end local v12    # "activity":Landroid/app/Activity;
    invoke-virtual {v12}, Lcom/android/settings/SettingsActivity;->getTopLevelDashboardId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    goto :goto_2
.end method

.method private showOnlineHelpDialog(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 827
    .local v4, "mContext":Landroid/content/Context;
    move-object v5, p1

    .line 828
    .local v5, "mIntent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04022b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 830
    .local v1, "dialogLayout":Landroid/view/View;
    const v8, 0x7f0d051d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 832
    .local v0, "checkboxView":Landroid/widget/CheckBox;
    const v8, 0x7f0d00ec

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 833
    .local v6, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e1654

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/Utils;->getResIdForUserManual()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 837
    .local v7, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 838
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v8, "onlinehelp_show_dialog"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 839
    .local v2, "doNotShow":Z
    if-nez v2, :cond_0

    .line 840
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1653

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e0f8c

    new-instance v10, Lcom/android/settings/dashboard/DashboardSummarySplit$9;

    invoke-direct {v10, p0, v0, v3, v5}, Lcom/android/settings/dashboard/DashboardSummarySplit$9;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Landroid/content/Intent;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0e01ba

    new-instance v10, Lcom/android/settings/dashboard/DashboardSummarySplit$8;

    invoke-direct {v10, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$8;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/dashboard/DashboardSummarySplit$7;

    invoke-direct {v9, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$7;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 862
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.settings"

    const-string v10, "HQST"

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "categoryid"    # I

    .prologue
    const/4 v2, 0x0

    .line 365
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 366
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    :goto_0
    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-static {p6, v1}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 375
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 384
    .local v0, "summary":Ljava/lang/CharSequence;
    return-void

    .line 368
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x23

    return v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    .line 1005
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/32 v6, 0x7f0d06ae

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e10bb

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 530
    :cond_2
    instance-of v0, p1, Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPreferToolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_3

    .line 532
    sget-object v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPreferToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    :cond_3
    move-object v12, p1

    .line 534
    check-cast v12, Lcom/android/settings/dashboard/DashboardTileView;

    .line 535
    .local v12, "selectedTileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual {v12}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v11

    .line 537
    .local v11, "mTile":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0185

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v10

    .line 539
    .local v10, "currentFragment":Landroid/app/Fragment;
    if-eqz v10, :cond_4

    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 544
    iget-wide v0, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToTile(J)V

    .line 545
    iget-object v1, v11, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    iget v5, v11, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object v0, p0

    move v7, v4

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    goto :goto_0

    .line 548
    .end local v10    # "currentFragment":Landroid/app/Fragment;
    :cond_5
    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 549
    iget-wide v0, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->showOnlineHelpDialog(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 552
    :cond_6
    iget-wide v0, v11, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v11, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 20
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    invoke-super/range {p0 .. p1}, Lcom/android/settings/InstrumentedFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 251
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 252
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 253
    .local v9, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 254
    .local v3, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .local v5, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .local v8, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v16, v0

    add-float v14, v15, v16

    .line 261
    .local v14, "weightSum":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    if-eqz v15, :cond_1

    sget-boolean v15, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUserUpdateSplit:Z

    if-nez v15, :cond_1

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0012

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    int-to-float v15, v15

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0013

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    int-to-float v15, v15

    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    int-to-float v15, v9

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    div-float v13, v15, v14

    .line 270
    .local v13, "tempheaderLayoutWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0160

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 272
    .local v4, "headerLayoutMinSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0161

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    int-to-float v11, v15

    .line 274
    .local v11, "snapCenterPosition":F
    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    .line 276
    .local v12, "splitXinFullview":F
    cmpl-float v15, v13, v11

    if-lez v15, :cond_2

    int-to-float v15, v4

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_2

    .line 278
    int-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v7, v0

    .line 279
    .local v7, "newLeftPanelWeight":F
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 280
    sub-int v15, v9, v4

    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 281
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.android.settings_preferences"

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 286
    .local v10, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 287
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v15, "split_bar_left_wegigh"

    invoke-interface {v2, v15, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 289
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "newLeftPanelWeight":F
    .end local v10    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_2
    cmpg-float v15, v13, v11

    if-gtz v15, :cond_0

    .line 290
    float-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v7, v0

    .line 291
    .restart local v7    # "newLeftPanelWeight":F
    float-to-int v15, v12

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 292
    int-to-float v15, v9

    sub-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 293
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.android.settings_preferences"

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 298
    .restart local v10    # "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 299
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v15, "split_bar_left_wegigh"

    invoke-interface {v2, v15, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v0, ":android:current_dashboard_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->InitialDashboardId:J

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->setHasOptionsMenu(Z)V

    .line 194
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0d79

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 308
    const v2, 0x7f04008f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0d0180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDashboard:Landroid/view/ViewGroup;

    .line 310
    const v2, 0x7f0d0181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 311
    const v2, 0x7f0d0186

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    .line 312
    const v2, 0x7f0d017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 313
    const v2, 0x7f0d0184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 314
    const v2, 0x7f0d017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainToolbar:Landroid/widget/Toolbar;

    .line 315
    const v2, 0x7f0d0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    sput-object v2, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPreferToolbar:Landroid/widget/Toolbar;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPreferToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->onBackStackChanged()V

    .line 319
    sget-object v2, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPreferToolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/settings/dashboard/DashboardSummarySplit$4;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$4;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f0e01c3

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f140009

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mMainToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 335
    .local v0, "menu":Landroid/view/Menu;
    const v2, 0x7f0d06df

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 336
    const v2, 0x7f0d06e0

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 337
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 339
    .end local v0    # "menu":Landroid/view/Menu;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->initializeLayoutBySplitBar()V

    .line 340
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 342
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 344
    return-object v1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 809
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 810
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 812
    .local v0, "action":I
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 813
    const/4 v2, 0x4

    const/4 v3, -0x1

    :try_start_0
    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 821
    .end local v0    # "action":I
    :cond_0
    :goto_0
    return v1

    .line 814
    .restart local v0    # "action":I
    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 815
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "action":I
    :cond_2
    move v1, v2

    .line 821
    goto :goto_0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e10bb

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1027
    :goto_0
    return v3

    .line 1023
    :cond_0
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0e0de8

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    move-object v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/dashboard/DashboardSummarySplit;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V

    .line 1026
    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildUI(Landroid/content/Context;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 212
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummarySplit$3;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$3;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 218
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 229
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v0, :cond_0

    .line 178
    const-string v0, ":android:current_dashboard_id"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 35
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 564
    .local v2, "action":I
    const/16 v23, 0x0

    .line 565
    .local v23, "splitBar":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0c0161

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v22, v0

    .line 567
    .local v22, "snapCenterPosition":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 568
    .local v3, "d":Landroid/util/DisplayMetrics;
    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0014

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    .line 570
    .local v27, "splitXinFullview":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0c0160

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 572
    .local v7, "headerLayoutMinSize":I
    const/16 v16, 0x0

    .line 573
    .local v16, "newSplitBarCenterPosX":F
    const/16 v18, 0x0

    .line 574
    .local v18, "parentLayoutWidth":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 575
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 578
    :cond_0
    if-nez v23, :cond_1

    .line 579
    const/16 v32, 0x0

    .line 804
    :goto_0
    return v32

    .line 582
    :cond_1
    if-nez v2, :cond_4

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020356

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 586
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 769
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 771
    .local v6, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 774
    .local v10, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUserUpdateSplit:Z

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 778
    .local v20, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 779
    .local v8, "leftPanelWeight":F
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v19, v0

    .line 780
    .local v19, "rightPanelWeight":F
    add-float v30, v8, v19

    .line 782
    .local v30, "weightSum":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v9, v16, v32

    .line 784
    .local v9, "leftPanelWidthRatio":F
    mul-float v12, v30, v9

    .line 785
    .local v12, "newLeftPanelWeight":F
    sub-float v14, v30, v12

    .line 787
    .local v14, "newRightPanelWeight":F
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 788
    move-object/from16 v0, v20

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 790
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v33, v12, v30

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v13, v0

    .line 791
    .local v13, "newLeftPanelWidth":I
    sub-int v15, v18, v13

    .line 792
    .local v15, "newRightPanelWidth":I
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 793
    move-object/from16 v0, v20

    iput v15, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 796
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    :goto_2
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 804
    .end local v6    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v8    # "leftPanelWeight":F
    .end local v9    # "leftPanelWidthRatio":F
    .end local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "newLeftPanelWeight":F
    .end local v13    # "newLeftPanelWidth":I
    .end local v14    # "newRightPanelWeight":F
    .end local v15    # "newRightPanelWidth":I
    .end local v19    # "rightPanelWeight":F
    .end local v20    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "weightSum":F
    :cond_3
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 587
    :cond_4
    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v2, v0, :cond_14

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v25

    .line 589
    .local v25, "splitBarwidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    .line 590
    .local v28, "touchX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getX()F

    move-result v17

    .line 591
    .local v17, "newSplitBarPosX":F
    add-float v29, v17, v28

    .line 593
    .local v29, "touchXInParentRect":F
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v16, v17, v32

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    check-cast v32, Landroid/view/View;

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 597
    const v24, 0x3eae147a    # 0.33999997f

    .line 598
    .local v24, "splitBarMoveableMin":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v5, v32, v27

    .line 599
    .local v5, "fullViewPosX":F
    sub-int v32, v18, v7

    move/from16 v0, v32

    int-to-float v11, v0

    .line 600
    .local v11, "minumPosition":F
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v28, v32

    if-lez v32, :cond_8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v29, v32

    if-gtz v32, :cond_8

    .line 605
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v28, v32

    add-float v16, v16, v32

    .line 607
    cmpl-float v32, v16, v11

    if-lez v32, :cond_6

    add-float v32, v11, v22

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_6

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v32

    move/from16 v0, v32

    if-le v0, v7, :cond_5

    .line 613
    move/from16 v16, v11

    .line 614
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 615
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 618
    :cond_5
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    .line 620
    :cond_6
    add-float v32, v11, v22

    cmpl-float v32, v16, v32

    if-lez v32, :cond_7

    cmpg-float v32, v16, v5

    if-gtz v32, :cond_7

    .line 622
    move/from16 v16, v5

    .line 623
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 624
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 626
    :cond_7
    cmpg-float v32, v16, v11

    if-gtz v32, :cond_2

    .line 627
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 628
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 632
    :cond_8
    const/16 v32, 0x0

    cmpg-float v32, v28, v32

    if-gez v32, :cond_2

    const/16 v32, 0x0

    cmpl-float v32, v29, v32

    if-ltz v32, :cond_2

    .line 635
    add-float v16, v16, v28

    .line 637
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v26, v16, v32

    .line 639
    .local v26, "splitRatio":F
    cmpg-float v32, v26, v24

    if-gez v32, :cond_9

    .line 640
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v16, v32, v24

    .line 641
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 642
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 644
    :cond_9
    add-float v32, v11, v22

    cmpl-float v32, v16, v32

    if-lez v32, :cond_a

    cmpg-float v32, v16, v5

    if-gtz v32, :cond_a

    .line 649
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 650
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    .line 651
    :cond_a
    add-float v32, v11, v22

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_b

    cmpl-float v32, v16, v11

    if-lez v32, :cond_b

    .line 656
    move/from16 v16, v11

    .line 657
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 658
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 661
    :cond_b
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 662
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 667
    .end local v5    # "fullViewPosX":F
    .end local v11    # "minumPosition":F
    .end local v24    # "splitBarMoveableMin":F
    .end local v26    # "splitRatio":F
    :cond_c
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v28, v32

    if-lez v32, :cond_10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v29, v32

    if-gtz v32, :cond_10

    .line 672
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v28, v32

    add-float v16, v16, v32

    .line 674
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v26, v16, v32

    .line 675
    .restart local v26    # "splitRatio":F
    const v32, 0x3f28f5c3    # 0.66f

    cmpl-float v32, v26, v32

    if-lez v32, :cond_d

    .line 676
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3f28f5c3    # 0.66f

    mul-float v16, v32, v33

    .line 677
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 678
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 680
    :cond_d
    cmpg-float v32, v16, v22

    if-gtz v32, :cond_e

    cmpl-float v32, v16, v27

    if-lez v32, :cond_e

    .line 685
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 686
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    .line 687
    :cond_e
    cmpl-float v32, v16, v22

    if-lez v32, :cond_f

    int-to-float v0, v7

    move/from16 v32, v0

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_f

    .line 692
    int-to-float v0, v7

    move/from16 v16, v0

    .line 693
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 694
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 697
    :cond_f
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 698
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 702
    .end local v26    # "splitRatio":F
    :cond_10
    const/16 v32, 0x0

    cmpg-float v32, v28, v32

    if-gez v32, :cond_2

    const/16 v32, 0x0

    cmpl-float v32, v29, v32

    if-ltz v32, :cond_2

    .line 704
    add-float v16, v16, v28

    .line 706
    int-to-float v0, v7

    move/from16 v32, v0

    cmpg-float v32, v16, v32

    if-gtz v32, :cond_12

    cmpl-float v32, v16, v22

    if-lez v32, :cond_12

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v32

    move/from16 v0, v32

    if-le v0, v7, :cond_11

    .line 712
    int-to-float v0, v7

    move/from16 v16, v0

    .line 713
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 714
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 717
    :cond_11
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    goto/16 :goto_1

    .line 719
    :cond_12
    cmpg-float v32, v16, v22

    if-gtz v32, :cond_13

    cmpl-float v32, v16, v27

    if-lez v32, :cond_13

    .line 721
    move/from16 v16, v27

    .line 722
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 723
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 725
    :cond_13
    int-to-float v0, v7

    move/from16 v32, v0

    cmpl-float v32, v16, v32

    if-lez v32, :cond_2

    .line 726
    div-int/lit8 v32, v25, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v17, v16, v32

    .line 727
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 732
    .end local v17    # "newSplitBarPosX":F
    .end local v25    # "splitBarwidth":I
    .end local v28    # "touchX":F
    .end local v29    # "touchXInParentRect":F
    :cond_14
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_16

    .line 734
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 735
    .restart local v6    # "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 738
    .restart local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    sget v32, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-eqz v32, :cond_15

    .line 739
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v32, v0

    sput v32, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "com.android.settings_preferences"

    const/16 v34, 0x4

    invoke-virtual/range {v32 .. v34}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 743
    .local v21, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 744
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v32, "split_bar_left_wegigh"

    sget v33, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarMovedLeftWeight:F

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 745
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 749
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020355

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_1

    .line 754
    .end local v6    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getX()F

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getWidth()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v31, v32, v33

    .line 755
    .local v31, "x":F
    const/16 v32, 0x0

    cmpg-float v32, v31, v32

    if-gez v32, :cond_17

    .line 756
    const/16 v31, 0x0

    .line 758
    :cond_17
    const/16 v32, 0x3

    move/from16 v0, v32

    if-eq v2, v0, :cond_18

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSplitBarView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 761
    :cond_18
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/dashboard/DashboardSummarySplit;->mUpdateLayoutBySplitChange:Z

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020355

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 799
    .end local v31    # "x":F
    .restart local v6    # "headerLayout":Landroid/widget/LinearLayout;
    .restart local v8    # "leftPanelWeight":F
    .restart local v9    # "leftPanelWidthRatio":F
    .restart local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12    # "newLeftPanelWeight":F
    .restart local v13    # "newLeftPanelWidth":I
    .restart local v14    # "newRightPanelWeight":F
    .restart local v15    # "newRightPanelWidth":I
    .restart local v19    # "rightPanelWeight":F
    .restart local v20    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v30    # "weightSum":F
    :cond_19
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public openSearchView()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1034
    :cond_0
    return-void
.end method

.method public switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)V
    .locals 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z
    .param p8, "resultTo"    # Landroid/app/Fragment;
    .param p9, "resultRequestCode"    # I

    .prologue
    .line 882
    if-nez p1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 886
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 889
    invoke-static {v0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 891
    .local v1, "f":Landroid/app/Fragment;
    if-eqz p8, :cond_2

    .line 892
    invoke-virtual {v1, p8, p9}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 899
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const-class v4, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 900
    const-string v2, "main_content"

    .line 901
    .local v2, "tag":Ljava/lang/String;
    const/high16 v4, 0x10b0000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 902
    const-string v4, ":settings:prefs"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 903
    const v4, 0x7f0d049b

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 915
    .end local v2    # "tag":Ljava/lang/String;
    :goto_1
    const-class v4, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 916
    if-lez p5, :cond_6

    .line 917
    invoke-virtual {v3, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 923
    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 905
    :cond_4
    const/16 v4, 0x1003

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 906
    if-eqz p4, :cond_5

    const-string v4, "com.android.settings.cloud.CloudSettingsMainFragment"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 909
    const-string v4, ":settings:prefs"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 912
    :cond_5
    const v4, 0x7f0d0185

    const-string v5, "main_content2"

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 918
    :cond_6
    if-eqz p6, :cond_3

    .line 919
    invoke-virtual {v3, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method public switchToTile(J)V
    .locals 5
    .param p1, "selectedTileId"    # J

    .prologue
    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 866
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 867
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    const v2, 0x7f0200b7

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 872
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mArrayTileView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;

    .line 876
    :cond_1
    return-void

    .line 865
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
