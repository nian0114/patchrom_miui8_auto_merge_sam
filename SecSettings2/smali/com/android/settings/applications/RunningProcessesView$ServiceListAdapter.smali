.class Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings_ex/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V
    .locals 2
    .param p2, "state"    # Lcom/android/settings_ex/applications/RunningState;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 221
    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 222
    invoke-virtual {p1}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 225
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 310
    monitor-exit v4

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 313
    .local v2, "vh":Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 314
    .local v1, "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 315
    .local v0, "ai":Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    monitor-exit v4

    goto :goto_0

    .end local v0    # "ai":Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .end local v1    # "item":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v2    # "vh":Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 289
    if-nez p2, :cond_0

    .line 290
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 295
    return-object v0

    .line 292
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401bd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 301
    return-object v0
.end method

.method refreshItems()V
    .locals 3

    .prologue
    .line 241
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    .local v0, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 245
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 246
    if-nez v0, :cond_2

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 256
    :cond_0
    :goto_1
    return-void

    .line 241
    .end local v0    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 249
    .restart local v0    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method setShowBackground(Z)V
    .locals 2
    .param p1, "showBackground"    # Z

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 229
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 234
    :cond_0
    return-void
.end method
