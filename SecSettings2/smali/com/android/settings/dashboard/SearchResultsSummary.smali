.class public Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C

.field public static mIsRunningSearchFragment:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mLoading:Landroid/view/ViewGroup;

.field private mNoResults:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchToolbar:Landroid/widget/Toolbar;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsHeaderView:Landroid/view/View;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

.field private scrollListner:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->ELLIPSIS:C

    .line 441
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mIsRunningSearchFragment:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 234
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    .line 814
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->startLoading()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->stopLoading()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->saveQueryToDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setEmptyVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method private cancelLoading()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 656
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 660
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 662
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 619
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 621
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 622
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 601
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 603
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 604
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 650
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveQueryToDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 561
    return-void
.end method

.method private setEmptyVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 553
    :cond_1
    return-void

    .line 551
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 629
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->setQuery(Ljava/lang/String;)V

    .line 630
    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 546
    :cond_0
    return-void

    .line 544
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 607
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 611
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 532
    :cond_0
    if-eqz p1, :cond_3

    .line 533
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 540
    :cond_1
    :goto_1
    return-void

    .line 530
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method private startLoading()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    .line 133
    :cond_0
    return-void
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 675
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0, v3}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 678
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 683
    :goto_0
    return-void

    .line 680
    :cond_0
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 665
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 666
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 667
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 445
    const/16 v0, 0x22

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 507
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->checkSupportVolteSettings(Landroid/content/Context;)V

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->checkVzwVoLTEFeatureEnabled(Landroid/content/Context;)V

    .line 512
    instance-of v0, p1, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_0

    .line 513
    invoke-static {p1}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const/4 v2, 0x0

    const-string v3, "main_mode"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/search/Index;->setCategories(Ljava/util/List;)V

    .line 515
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->startSearchIndexing(Landroid/app/Activity;)V

    .line 516
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 196
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 197
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 199
    if-eqz p1, :cond_0

    .line 200
    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 202
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 267
    const v4, 0x7f0401c7

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 268
    .local v3, "view":Landroid/view/View;
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasLargerThan10inchScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const v4, 0x7f0d0483

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 270
    .local v2, "root":Landroid/widget/LinearLayout;
    const v4, 0x7f0a00fc

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 271
    const v4, 0x7f0d0485

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 272
    .local v1, "panel":Landroid/widget/FrameLayout;
    const v4, 0x7f020343

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 275
    .end local v1    # "panel":Landroid/widget/FrameLayout;
    .end local v2    # "root":Landroid/widget/LinearLayout;
    :cond_0
    const v4, 0x7f0d0488

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 276
    const v4, 0x7f0d048a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 277
    const v4, 0x7f0d0486

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mNoResults:Landroid/view/ViewGroup;

    .line 278
    const v4, 0x7f0d0335

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLoading:Landroid/view/ViewGroup;

    .line 280
    const v4, 0x7f0d0484

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    .line 282
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    const v5, 0x7f140009

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 284
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 285
    .local v0, "menu":Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    .line 286
    const v4, 0x7f0d06df

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 287
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    .line 288
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SearchView;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 289
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    new-instance v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    .end local v0    # "menu":Landroid/view/Menu;
    :goto_0
    const v4, 0x7f0d048b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 299
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 301
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$3;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 410
    const v4, 0x7f0d0489

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->scrollListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 413
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$4;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401c9

    iget-object v6, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    .line 435
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsHeaderView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 439
    :cond_1
    return-object v3

    .line 296
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchToolbar:Landroid/widget/Toolbar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 222
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 223
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 225
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 226
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 227
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 229
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 231
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 232
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 521
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDetach()V

    .line 522
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 478
    sput-boolean v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mIsRunningSearchFragment:Z

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 480
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 483
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 484
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 486
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 491
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 492
    instance-of v2, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 493
    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->registerAssistant()V

    .line 495
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 499
    :cond_3
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 574
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->cancelLoading()V

    .line 580
    iput-boolean v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 581
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 582
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 589
    :goto_0
    return v3

    .line 584
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 585
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 586
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 564
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 566
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 567
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 570
    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 450
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 451
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mIsRunningSearchFragment:Z

    .line 452
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x102047f

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 455
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v2, :cond_4

    .line 456
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 466
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 467
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 468
    instance-of v2, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 469
    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->unregisterAssistant()V

    .line 471
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 473
    :cond_3
    return-void

    .line 458
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->getCount()I

    move-result v1

    .line 460
    .local v1, "cnt":I
    if-nez v1, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearResults()V

    .line 217
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 526
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 596
    return-void
.end method
