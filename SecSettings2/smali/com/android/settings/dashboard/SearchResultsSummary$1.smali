.class Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 260
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 238
    if-nez p2, :cond_1

    .line 239
    const-string v1, "SearchResultsSummary"

    const-string v2, "scroll skip, SCROLL_STATE_IDLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$700(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/android/settings_ex/Utils;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->minimizeSoftInput(Landroid/os/IBinder;I)Z

    .line 251
    :goto_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$800(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$800(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_1
.end method
