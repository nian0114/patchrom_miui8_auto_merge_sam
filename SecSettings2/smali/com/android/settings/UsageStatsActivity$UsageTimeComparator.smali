.class public Lcom/android/settings_ex/UsageStatsActivity$UsageTimeComparator;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 4
    .param p1, "a"    # Landroid/app/usage/UsageStats;
    .param p2, "b"    # Landroid/app/usage/UsageStats;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Landroid/app/usage/UsageStats;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/usage/UsageStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/UsageStatsActivity$UsageTimeComparator;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result v0

    return v0
.end method
