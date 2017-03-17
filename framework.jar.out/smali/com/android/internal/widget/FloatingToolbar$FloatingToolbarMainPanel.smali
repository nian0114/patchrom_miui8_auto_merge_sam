.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation


# instance fields
.field private MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_VERTICAL:I

.field private isClickedOption:Z

.field mCloseButton:Landroid/widget/ImageView;

.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mExtraItemWidth:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLinearLayoutArray:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mOpenButton:Landroid/widget/TextView;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private mOpenOverflowButton:Landroid/view/View;

.field mOpenedPopupHeight:I

.field private mOptionItemWidth:I

.field private mPopupHeight:I

.field private mPopupMaxHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mScreenInches:D

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTwContentView:Landroid/view/ViewGroup;

.field private mUseNewSamsungToolbar:Z

.field private mUseSamsungToolbar:Z

.field mVerticalLinearLayout:Landroid/widget/LinearLayout;

.field private final viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x11200d1

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v3, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .local v4, "x":D
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .local v6, "y":D
    add-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScreenInches:D

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_PHONE:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f4

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_PHONE:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f9

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_VERTICAL:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050245

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050244

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x105024c

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050246

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOptionItemWidth:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1080a17

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerWidth:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050250

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerPadding:I

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v2    # "manager":Landroid/view/WindowManager;
    .end local v4    # "x":D
    .end local v6    # "y":D
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "manager":Landroid/view/WindowManager;
    .restart local v4    # "x":D
    .restart local v6    # "y":D
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/HorizontalScrollView;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method private getMenuLimit()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .local v0, "isPortrait":Z
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScreenInches:D

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

    :goto_1
    return v1

    .end local v0    # "isPortrait":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isPortrait":Z
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1
.end method

.method private getMenuLimitVertical()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_VERTICAL:I

    return v0
.end method

.method private getPopupWidthLimit()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v0

    .local v0, "items":I
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerWidth:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxWidth:I

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxWidth:I

    return v1
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    move-object v0, p1

    .local v0, "button":Landroid/view/View;
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->access$2700(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    return-void
.end method

.method public getNeedHeightNewPopup()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupMaxHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPopupMaxHeight()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimitVertical()I

    move-result v0

    .local v0, "items":I
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;
    .locals 20
    .param p2, "width"    # I
    .param p3, "useSamsungToolbar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    invoke-static {v14}, Lcom/android/internal/widget/FloatingToolbar;->access$2200(Landroid/content/Context;)I

    move-result v14

    sub-int v13, p2, v14

    .local v13, "toolbarWidth":I
    move v2, v13

    .local v2, "availableWidth":I
    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v12, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14}, Landroid/widget/ScrollView;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const/4 v3, 0x1

    .local v3, "isFirstItem":Z
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v6

    .local v6, "mMenuSize":I
    const/4 v5, 0x0

    .local v5, "mMenuNum":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v12}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MenuItem;

    .local v8, "menuItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x1090157

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x1040327

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080a1b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    new-instance v15, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x1090156

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-interface {v8}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    const/4 v3, 0x0

    goto/16 :goto_1

    .end local v3    # "isFirstItem":Z
    .end local v5    # "mMenuNum":I
    .end local v6    # "mMenuSize":I
    .end local v8    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v14}, Landroid/widget/HorizontalScrollView;->removeAllViews()V

    goto/16 :goto_0

    .restart local v3    # "isFirstItem":Z
    .restart local v5    # "mMenuNum":I
    .restart local v6    # "mMenuSize":I
    .restart local v8    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;
    invoke-static {v14, v8, v0}, Lcom/android/internal/widget/FloatingToolbar;->access$2500(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;

    move-result-object v9

    .local v9, "menuItemButton":Landroid/view/View;
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v6, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v15

    if-le v14, v15, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    div-int v14, v5, v14

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    rem-int v14, v5, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v4, 0x0

    .local v4, "mCurLayoutIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    .end local v4    # "mCurLayoutIndex":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v14, v14

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v16

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    .local v10, "menuItemButtonWidth":I
    if-gt v10, v2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .restart local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v2, v10

    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x1090060

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    new-instance v15, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .end local v8    # "menuItem":Landroid/view/MenuItem;
    .end local v9    # "menuItemButton":Landroid/view/View;
    .end local v10    # "menuItemButtonWidth":I
    :cond_9
    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .local v7, "mScrollViewparams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v14, v6, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v15

    if-le v14, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerPadding:I

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .restart local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOptionItemWidth:I

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v14, -0x1

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v7    # "mScrollViewparams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    :goto_2
    return-object v12

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public measure()Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1
.end method

.method public measureSamsung()Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0
.end method

.method public setAllMenuInNewPopup()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setHeightNewPopup()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenedPopupHeight:I

    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method
