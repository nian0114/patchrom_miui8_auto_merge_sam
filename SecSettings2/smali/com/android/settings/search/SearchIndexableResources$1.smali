.class final Lcom/android/settings_ex/search/SearchIndexableResources$1;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/search/SearchIndexableResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/provider/SearchIndexableResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/provider/SearchIndexableResource;Landroid/provider/SearchIndexableResource;)I
    .locals 4
    .param p1, "object1"    # Landroid/provider/SearchIndexableResource;
    .param p2, "object2"    # Landroid/provider/SearchIndexableResource;

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "a":I
    const/4 v1, 0x0

    .line 354
    .local v1, "b":I
    const/4 v2, 0x0

    .line 355
    .local v2, "result":I
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    iget-object v3, p1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v0

    .line 358
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p2, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    iget-object v3, p2, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v1

    .line 362
    :cond_1
    if-ge v0, v1, :cond_3

    .line 363
    const/4 v2, -0x1

    .line 367
    :cond_2
    :goto_0
    return v2

    .line 364
    :cond_3
    if-le v0, v1, :cond_2

    .line 365
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 349
    check-cast p1, Landroid/provider/SearchIndexableResource;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/provider/SearchIndexableResource;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/search/SearchIndexableResources$1;->compare(Landroid/provider/SearchIndexableResource;Landroid/provider/SearchIndexableResource;)I

    move-result v0

    return v0
.end method
