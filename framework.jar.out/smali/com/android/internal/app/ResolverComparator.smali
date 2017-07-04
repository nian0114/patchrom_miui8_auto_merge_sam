.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RECENCY_MULTIPLIER:F = 3.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mCurrentTime:J

.field private final mHttp:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mReferrerPackage:Ljava/lang/String;

.field private final mScoredTargets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/app/ResolverComparator$ScoredTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v4, 0x48190800

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 19
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    const-string v4, "com.sec.android.display_priority"

    .local v4, "displayPriorityKey":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .local v7, "lhs":Landroid/content/pm/ResolveInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .local v10, "rhs":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .local v5, "ia":I
    const/4 v1, 0x0

    .local v1, "ai_A":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v15, :cond_0

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v16, "com.sec.android.display_priority"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    :cond_0
    const/4 v6, 0x0

    .local v6, "ib":I
    const/4 v2, 0x0

    .local v2, "ai_B":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v15, :cond_1

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v16, "com.sec.android.display_priority"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    :cond_1
    if-eq v5, v6, :cond_2

    sub-int v15, v6, v5

    :goto_0
    return v15

    :cond_2
    iget v15, v7, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v15, :cond_5

    iget v15, v7, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v8

    .local v8, "lhsSpecific":Z
    iget v15, v10, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v11

    .local v11, "rhsSpecific":Z
    if-eq v8, v11, :cond_5

    if-eqz v8, :cond_4

    const/4 v15, -0x1

    goto :goto_0

    :cond_4
    const/4 v15, 0x1

    goto :goto_0

    .end local v8    # "lhsSpecific":Z
    .end local v11    # "rhsSpecific":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    new-instance v16, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .local v9, "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    new-instance v16, Landroid/content/ComponentName;

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .local v12, "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    iget v15, v12, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    iget v0, v9, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    move/from16 v16, v0

    sub-float v3, v15, v16

    .local v3, "diff":F
    const/4 v15, 0x0

    cmpl-float v15, v3, v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    cmpl-float v15, v3, v15

    if-lez v15, :cond_6

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v15, -0x1

    goto/16 :goto_0

    .end local v3    # "diff":F
    .end local v9    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v12    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .local v13, "sa":Ljava/lang/CharSequence;
    if-nez v13, :cond_8

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .local v14, "sb":Ljava/lang/CharSequence;
    if-nez v14, :cond_9

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    return v0
.end method

.method public compute(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x2932e00

    sub-long v16, v22, v24

    .local v16, "recentSinceTime":J
    const-wide/16 v22, 0x1

    add-long v8, v16, v22

    .local v8, "mostRecentlyUsedTime":J
    const-wide/16 v10, 0x1

    .local v10, "mostTimeSpent":J
    const/4 v7, 0x1

    .local v7, "mostLaunched":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .local v18, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/android/internal/app/ResolverComparator$ScoredTarget;-><init>(Landroid/content/pm/ComponentInfo;)V

    .local v15, "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .local v12, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v12, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    .local v4, "lastTimeUsed":J
    iput-wide v4, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    cmp-long v22, v4, v8

    if-lez v22, :cond_1

    move-wide v8, v4

    .end local v4    # "lastTimeUsed":J
    :cond_1
    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v20

    .local v20, "timeSpent":J
    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    cmp-long v22, v20, v10

    if-lez v22, :cond_2

    move-wide/from16 v10, v20

    :cond_2
    iget v6, v12, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .local v6, "launched":I
    int-to-long v0, v6

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    if-le v6, v7, :cond_0

    move v7, v6

    goto/16 :goto_0

    .end local v6    # "launched":I
    .end local v12    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v15    # "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v20    # "timeSpent":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .local v18, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v16

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    sub-long v24, v8, v16

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v13, v22, v23

    .local v13, "recency":F
    mul-float v22, v13, v13

    const/high16 v23, 0x40400000    # 3.0f

    mul-float v14, v22, v23

    .local v14, "recencyScore":F
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    long-to-float v0, v10

    move/from16 v23, v0

    div-float v19, v22, v23

    .local v19, "usageTimeScore":F
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v7

    move/from16 v23, v0

    div-float v3, v22, v23

    .local v3, "launchCountScore":F
    add-float v22, v14, v19

    add-float v22, v22, v3

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    goto :goto_1

    .end local v3    # "launchCountScore":F
    .end local v13    # "recency":F
    .end local v14    # "recencyScore":F
    .end local v18    # "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v19    # "usageTimeScore":F
    :cond_4
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .local v0, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
