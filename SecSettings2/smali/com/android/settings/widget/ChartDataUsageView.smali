.class public Lcom/android/settings_ex/widget/ChartDataUsageView;
.super Lcom/android/settings_ex/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings_ex/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mIsNeedShowSavedDetail:Z

.field private mIsSupportDataCompression:Z

.field private mListView:Lcom/android/settings_ex/widget/DataUsageListView;

.field private mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportDataCompression()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsSupportDataCompression:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsNeedShowSavedDetail:Z

    .line 436
    new-instance v1, Lcom/android/settings_ex/widget/ChartDataUsageView$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$4;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .line 454
    new-instance v1, Lcom/android/settings_ex/widget/ChartDataUsageView$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$5;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mContext:Landroid/content/Context;

    .line 120
    iget-boolean v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsSupportDataCompression:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsNeedShowSavedDetail:Z

    .line 121
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/settings_ex/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings_ex/widget/InvertedChartAxis;-><init>(Lcom/android/settings_ex/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 123
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$1000(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/DataUsageListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListView:Lcom/android/settings_ex/widget/DataUsageListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/widget/ChartDataUsageView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/SpannableStringBuilder;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .param p0, "i"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 860
    sub-long/2addr p0, v2

    .line 863
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 864
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 865
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 866
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 867
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 868
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 870
    add-long/2addr p0, v2

    .line 872
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "i":J
    :goto_0
    return-wide p0

    .restart local p0    # "i":J
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/android/settings_ex/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 425
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 429
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "bootstrap"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 848
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 849
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 850
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 851
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 852
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 854
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 855
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 10

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v4

    .line 409
    .local v4, "maxEstimate":J
    const-wide v2, 0x7fffffffffffffffL

    .line 410
    .local v2, "interestLine":J
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 416
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 417
    const-wide v2, 0x7fffffffffffffffL

    .line 420
    :cond_1
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 421
    .local v0, "estimateVisible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 422
    return-void

    .line 412
    .end local v0    # "estimateVisible":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 420
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 599
    const-wide/16 v0, 0x0

    .local v0, "left":J
    const-wide/16 v2, 0x0

    .line 600
    .local v2, "right":J
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 602
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 605
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 606
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 608
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v6, v7, v6, v7}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 620
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0

    .line 613
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0

    .line 616
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 24
    .param p1, "activeSweep"    # Lcom/android/settings_ex/widget/ChartSweepView;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    .line 345
    .local v8, "max":J
    const-wide/16 v18, 0x0

    .line 346
    .local v18, "newMax":J
    if-eqz p1, :cond_0

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    .line 348
    .local v6, "adjustAxis":I
    if-lez v6, :cond_5

    .line 350
    const-wide/16 v20, 0xb

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    .line 360
    .end local v6    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 361
    .local v14, "maxSweep":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 362
    .local v12, "maxSeries":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xc

    mul-long v20, v20, v22

    const-wide/16 v22, 0xa

    div-long v16, v20, v22

    .line 363
    .local v16, "maxVisible":J
    const-wide/32 v20, 0x3200000

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 364
    .local v10, "maxDefault":J
    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 367
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    .line 368
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v7

    .line 371
    .local v7, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 374
    if-eqz v7, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 377
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsNeedShowSavedDetail:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 382
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartGridView;->invalidate()V

    .line 385
    if-eqz p1, :cond_2

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/widget/ChartSweepView;->updateValueFromPosition()V

    .line 392
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 395
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 399
    .end local v7    # "changed":Z
    :cond_4
    return-void

    .line 351
    .end local v10    # "maxDefault":J
    .end local v12    # "maxSeries":J
    .end local v14    # "maxSweep":J
    .end local v16    # "maxVisible":J
    .restart local v6    # "adjustAxis":I
    :cond_5
    if-gez v6, :cond_6

    .line 353
    const-wide/16 v20, 0x9

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    goto/16 :goto_0

    .line 355
    :cond_6
    move-wide/from16 v18, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 4
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 273
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 275
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 277
    return-void

    .line 269
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 298
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/widget/ChartGridView;->setFocus(Z)V

    .line 304
    invoke-direct {p0, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 336
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/ChartGridView;->setFocus(Z)V

    .line 310
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 320
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v1, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 333
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 260
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 265
    return-void
.end method

.method public bindSavedDetailData(Landroid/net/NetworkStatsHistory;Lcom/android/settings_ex/datasaving/DataSavingHelper;)V
    .locals 4
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;
    .param p2, "dataSavingHelper"    # Lcom/android/settings_ex/datasaving/DataSavingHelper;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindDataSavingHelper(Landroid/net/NetworkStatsHistory;Lcom/android/settings_ex/datasaving/DataSavingHelper;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 293
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 294
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 296
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 511
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 514
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectEnd:J

    goto :goto_0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 501
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 504
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectStart:J

    goto :goto_0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x500000

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-super {p0}, Lcom/android/settings_ex/widget/ChartView;->onFinishInflate()V

    .line 152
    const v0, 0x7f0d018c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    .line 153
    const v0, 0x7f0d018d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 154
    const v0, 0x7f0d018e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 156
    const v0, 0x7f0d018f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 158
    const v0, 0x7f0d0190

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 159
    const v0, 0x7f0d0191

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 161
    const v0, 0x7f0d0193

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 162
    const v0, 0x7f0d0192

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    new-instance v1, Lcom/android/settings_ex/widget/ChartDataUsageView$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    new-instance v1, Lcom/android/settings_ex/widget/ChartDataUsageView$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$3;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v1, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v8, v9}, Lcom/android/settings_ex/widget/ChartSweepView;->setDragInterval(J)V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v8, v9}, Lcom/android/settings_ex/widget/ChartSweepView;->setDragInterval(J)V

    .line 203
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v1, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setClickable(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setClickable(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartGridView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 233
    iget-boolean v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsNeedShowSavedDetail:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 240
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setActivated(Z)V

    .line 241
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 484
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    :goto_0
    return v0

    .line 485
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 487
    goto :goto_0

    .line 490
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 491
    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setCurrentUid(I)V

    .line 285
    return-void
.end method

.method public setIsAppDetailMode(Z)V
    .locals 1
    .param p1, "isAppDetailMode"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setIsAppDetailMode(Z)V

    .line 281
    return-void
.end method

.method public setListView(Lcom/android/settings_ex/widget/DataUsageListView;)V
    .locals 0
    .param p1, "listView"    # Lcom/android/settings_ex/widget/DataUsageListView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListView:Lcom/android/settings_ex/widget/DataUsageListView;

    .line 138
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 256
    return-void
.end method

.method public setMaximumSetableValue(JJ)V
    .locals 1
    .param p1, "warning_value"    # J
    .param p3, "limit_value"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/widget/ChartSweepView;->setMaximumSetableValue(J)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, p3, p4}, Lcom/android/settings_ex/widget/ChartSweepView;->setMaximumSetableValue(J)V

    .line 251
    :cond_1
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 25
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v4

    .line 544
    .local v4, "changed":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartGridView;->setBounds(JJ)V

    .line 545
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 546
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 547
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsNeedShowSavedDetail:Z

    if-eqz v5, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 551
    :cond_0
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectStart:J

    .line 552
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartDataUsageView;->mInspectEnd:J

    .line 555
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportKKLookChart()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 557
    .local v10, "historyStart":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 559
    .local v8, "historyEnd":J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v5, v10, v20

    if-nez v5, :cond_3

    move-wide/from16 v18, p1

    .line 561
    .local v18, "validStart":J
    :goto_0
    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v5, v8, v20

    if-nez v5, :cond_4

    move-wide/from16 v16, p3

    .line 569
    .local v16, "validEnd":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 574
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 575
    .local v6, "halfRange":J
    move-wide/from16 v12, v16

    .line 576
    .local v12, "sweepMax":J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 578
    .local v14, "sweepMin":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v5, v14, v15}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 579
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v5, v12, v13}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 583
    .end local v6    # "halfRange":J
    .end local v8    # "historyEnd":J
    .end local v10    # "historyStart":J
    .end local v12    # "sweepMax":J
    .end local v14    # "sweepMin":J
    .end local v16    # "validEnd":J
    .end local v18    # "validStart":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 584
    if-eqz v4, :cond_2

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 587
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mIsNeedShowSavedDetail:Z

    if-eqz v5, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSavedDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 592
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 595
    return-void

    .line 559
    .restart local v8    # "historyEnd":J
    .restart local v10    # "historyStart":J
    :cond_3
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 561
    .restart local v18    # "validStart":J
    :cond_4
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method
