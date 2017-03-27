.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private bEasymode:Z

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mDashboard:Landroid/view/ViewGroup;

.field private mFavoriteDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainContainerView:[Landroid/view/ViewGroup;

.field private tilesCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    .line 75
    iput v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    .line 83
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    .line 103
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method private rebuildFavoriteContainer(Landroid/content/Context;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 282
    .local v26, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 284
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 286
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getFavoriteCategories(Z)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v20

    .line 291
    .local v20, "favorites":Lcom/android/settings/dashboard/DashboardCategory;
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04008c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 299
    .local v12, "categoryView":Landroid/view/View;
    :goto_1
    const v2, 0x7f0d0176

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 301
    .local v11, "categoryLayout":Landroid/widget/RelativeLayout;
    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    :cond_1
    const v2, 0x7f0d0171

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 303
    .local v10, "categoryLabel":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .end local v10    # "categoryLabel":Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0d0177

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 307
    .local v19, "editFavoriteButton":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v23, 0x1

    .line 308
    .local v23, "isEnabledShowBtnBg":Z
    :goto_2
    if-eqz v23, :cond_3

    .line 309
    const v2, 0x7f020360

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 312
    :cond_3
    new-instance v2, Lcom/android/settings/dashboard/DashboardSummary$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardSummary$4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e13a6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e091d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 322
    .local v18, "editButtonDescription":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    if-eqz v2, :cond_a

    .line 325
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :goto_3
    const v2, 0x7f0d0173

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 332
    .local v9, "categoryContent":Landroid/view/ViewGroup;
    const v2, 0x7f0d016f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 334
    .local v13, "categorydivider":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    .line 337
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    :cond_4
    move-object/from16 v2, p1

    .line 338
    check-cast v2, Lcom/android/settings/SettingsActivity;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->setFavoriteCount(I)V

    .line 340
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HIDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 341
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_4
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_c

    .line 350
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 352
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v28, Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;-><init>(Landroid/content/Context;)V

    .line 353
    .local v28, "tileView":Lcom/android/settings/dashboard/DashboardFavoriteTileView;
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/dashboard/DashboardSummary;->updateFavoriteTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 356
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v25

    .line 359
    .local v25, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int v29, v25, v2

    .line 360
    .local v29, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 363
    .local v21, "height":I
    div-int/lit8 v14, v29, 0x2

    .line 364
    .local v14, "centerX":I
    div-int/lit8 v15, v21, 0x2

    .line 366
    .local v15, "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 368
    .local v24, "padding":I
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 369
    .local v8, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v8, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_6

    .line 371
    sub-int v2, v14, v24

    sub-int v3, v15, v24

    add-int v6, v14, v24

    add-int v7, v15, v24

    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 375
    :cond_6
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    sget-wide v2, Lcom/android/settings/Utils;->focusedFavoriteId:J

    iget-wide v6, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 377
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->requestFocus()Z

    .line 349
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 295
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v8    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "categoryContent":Landroid/view/ViewGroup;
    .end local v11    # "categoryLayout":Landroid/widget/RelativeLayout;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v14    # "centerX":I
    .end local v15    # "centerY":I
    .end local v18    # "editButtonDescription":Ljava/lang/String;
    .end local v19    # "editFavoriteButton":Landroid/widget/TextView;
    .end local v21    # "height":I
    .end local v22    # "i":I
    .end local v23    # "isEnabledShowBtnBg":Z
    .end local v24    # "padding":I
    .end local v25    # "screenWidth":I
    .end local v28    # "tileView":Lcom/android/settings/dashboard/DashboardFavoriteTileView;
    .end local v29    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04008b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "categoryView":Landroid/view/View;
    goto/16 :goto_1

    .line 307
    .restart local v11    # "categoryLayout":Landroid/widget/RelativeLayout;
    .restart local v19    # "editFavoriteButton":Landroid/widget/TextView;
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 327
    .restart local v18    # "editButtonDescription":Ljava/lang/String;
    .restart local v23    # "isEnabledShowBtnBg":Z
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 345
    .restart local v9    # "categoryContent":Landroid/view/ViewGroup;
    .restart local v13    # "categorydivider":Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 382
    .restart local v22    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v26

    .line 385
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

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

    goto/16 :goto_0
.end method

.method private rebuildMainContainer(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 390
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 392
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 394
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    const-string v6, "main_mode"

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 397
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 398
    .local v14, "count":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    .line 399
    new-array v2, v14, [Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    .line 401
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_8

    .line 402
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/dashboard/DashboardCategory;

    .line 406
    .local v10, "category":Lcom/android/settings/dashboard/DashboardCategory;
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040087

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 414
    .local v12, "categoryView":Landroid/view/View;
    :goto_1
    const v2, 0x7f0d0171

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 415
    .local v11, "categoryLabel":Landroid/widget/TextView;
    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 416
    :cond_0
    invoke-virtual {v10, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    const v2, 0x7f0d0173

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v18

    .line 430
    const v2, 0x7f0d016f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 431
    .local v13, "categorydivider":Landroid/view/View;
    if-nez v18, :cond_2

    .line 432
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_2
    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v23

    .line 435
    .local v23, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v0, v23

    if-ge v15, v0, :cond_7

    .line 436
    invoke-virtual {v10, v15}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 438
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v22, Lcom/android/settings/dashboard/DashboardTileView;

    iget-wide v2, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;I)V

    .line 439
    .local v22, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    iget-wide v2, v10, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v8, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 442
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 444
    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    .line 446
    .local v19, "orientation":I
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v18

    check-cast v2, Lcom/android/settings/dashboard/DashboardContainerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardContainerView;->SetNumColumns(I)V

    .line 450
    .end local v19    # "orientation":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v18

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 451
    sget-wide v2, Lcom/android/settings/Utils;->focusedTileId:J

    iget-wide v6, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 452
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardTileView;->requestFocus()Z

    .line 435
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 410
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v11    # "categoryLabel":Landroid/widget/TextView;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v15    # "i":I
    .end local v22    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    .end local v23    # "tilesCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040086

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "categoryView":Landroid/view/View;
    goto/16 :goto_1

    .line 418
    .restart local v11    # "categoryLabel":Landroid/widget/TextView;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 419
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 421
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    if-nez v2, :cond_1

    if-nez v18, :cond_1

    .line 422
    const-string v2, "DashboardSummary"

    const-string v3, "add_quick_settings_container shown case so remove first category"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 457
    .restart local v13    # "categorydivider":Landroid/view/View;
    .restart local v15    # "i":I
    .restart local v23    # "tilesCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 460
    .end local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v11    # "categoryLabel":Landroid/widget/TextView;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v15    # "i":I
    .end local v23    # "tilesCount":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 461
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

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

    .line 462
    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "DashboardSummary"

    const-string v1, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildMainContainer(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendRebuildUI()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 273
    :cond_0
    return-void
.end method

.method private updateFavoriteTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 247
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 248
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    :goto_0
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getFavoriteTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    .local v0, "summary":Ljava/lang/CharSequence;
    return-void

    .line 250
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

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

    .line 223
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 224
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :goto_0
    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-static {p6, v1}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 233
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    .local v0, "summary":Ljava/lang/CharSequence;
    return-void

    .line 226
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x23

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    .line 168
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    .line 177
    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/4 v1, 0x1

    .line 179
    .local v1, "value":I
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 180
    const/4 v1, 0x2

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/settings/dashboard/DashboardContainerView;

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->SetNumColumns(I)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0d79

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 195
    const v1, 0x7f040084

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0d016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    .line 197
    const v1, 0x7f0d016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    .line 201
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method public redrawDashboard()V
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildMainContainer(Landroid/content/Context;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 474
    return-void
.end method

.method public redrawFavorite()V
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    .line 468
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 469
    return-void
.end method
