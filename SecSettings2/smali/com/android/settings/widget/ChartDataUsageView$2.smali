.class Lcom/android/settings_ex/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/ChartDataUsageView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 168
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListView:Lcom/android/settings_ex/widget/DataUsageListView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$300(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/DataUsageListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings_ex/widget/ChartDataUsageView;

    # getter for: Lcom/android/settings_ex/widget/ChartDataUsageView;->mListView:Lcom/android/settings_ex/widget/DataUsageListView;
    invoke-static {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$300(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/DataUsageListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/DataUsageListView;->setSelectable(Z)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
