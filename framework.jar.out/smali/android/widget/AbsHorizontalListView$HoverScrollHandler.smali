.class Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x2

    const v12, 0x3ecccccd    # 0.4f

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v5, 0x0

    .local v5, "offset":I
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v9, v10}, Landroid/widget/AbsHorizontalListView;->access$5702(Landroid/widget/AbsHorizontalListView;I)I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v10}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I
    invoke-static {v11}, Landroid/widget/AbsHorizontalListView;->access$5900(Landroid/widget/AbsHorizontalListView;)I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit16 v10, v10, 0x3e8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v9, v10}, Landroid/widget/AbsHorizontalListView;->access$5802(Landroid/widget/AbsHorizontalListView;I)I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I
    invoke-static {v10}, Landroid/widget/AbsHorizontalListView;->access$6000(Landroid/widget/AbsHorizontalListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I
    invoke-static {v10}, Landroid/widget/AbsHorizontalListView;->access$6100(Landroid/widget/AbsHorizontalListView;)I

    move-result v10

    if-lt v9, v10, :cond_0

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v4

    .local v4, "count":I
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v9, v9, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v4

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v10, v10, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ge v9, v10, :cond_7

    move v2, v8

    .local v2, "canScrollRight":Z
    :goto_1
    if-nez v2, :cond_2

    if-lez v4, :cond_2

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mRight:I
    invoke-static {v10}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v11, v11, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v11, v11, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_8

    :cond_1
    move v2, v8

    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_2
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v9, v9, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_9

    move v1, v8

    .local v1, "canScrollLeft":Z
    :goto_3
    if-nez v1, :cond_3

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v10, v10, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_a

    move v1, v8

    .end local v3    # "child":Landroid/view/View;
    :cond_3
    :goto_4
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v10}, Landroid/widget/AbsHorizontalListView;->access$6400(Landroid/widget/AbsHorizontalListView;)I

    move-result v10

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v9, v10}, Landroid/widget/AbsHorizontalListView;->access$6302(Landroid/widget/AbsHorizontalListView;I)I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$6500(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    if-ne v9, v13, :cond_b

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    mul-int/lit8 v5, v9, -0x1

    :goto_5
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v10, 0x438

    if-lt v9, v10, :cond_4

    mul-int/lit8 v5, v5, 0x2

    :cond_4
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    if-gez v5, :cond_5

    if-nez v1, :cond_6

    :cond_5
    if-lez v5, :cond_c

    if-eqz v2, :cond_c

    :cond_6
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9, v5, v7}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-result-object v7

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$6600(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_7
    move v2, v7

    goto/16 :goto_1

    .restart local v2    # "canScrollRight":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_8
    move v2, v7

    goto/16 :goto_2

    .end local v3    # "child":Landroid/view/View;
    :cond_9
    move v1, v7

    goto :goto_3

    .restart local v1    # "canScrollLeft":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_a
    move v1, v7

    goto :goto_4

    .end local v3    # "child":Landroid/view/View;
    :cond_b
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    mul-int/lit8 v5, v9, 0x1

    goto :goto_5

    :cond_c
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v6

    .local v6, "overscrollMode":I
    if-eqz v6, :cond_d

    if-ne v6, v8, :cond_12

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->contentFits()Z
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Z

    move-result v9

    if-nez v9, :cond_12

    :cond_d
    move v0, v8

    .local v0, "canOverscroll":Z
    :goto_6
    if-eqz v0, :cond_11

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6500(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    if-ne v7, v13, :cond_13

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_e
    :goto_7
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_10

    :cond_f
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    :cond_10
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6802(Landroid/widget/AbsHorizontalListView;Z)Z

    :cond_11
    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6802(Landroid/widget/AbsHorizontalListView;Z)Z

    goto/16 :goto_0

    .end local v0    # "canOverscroll":Z
    :cond_12
    move v0, v7

    goto :goto_6

    .restart local v0    # "canOverscroll":Z
    :cond_13
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6500(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
