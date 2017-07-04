.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$HoverScrollHandler;,
        Landroid/widget/HorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_WIDTH_DP:I = 0x19

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x4

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"

.field private static final THRESHOLD_RATIO_X:I = 0x30

.field private static final TIMEOUT_DELAY:I = 0x64


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mChangedTheme:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCShown:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLastHapticScrollX:I

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mLastScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPixelThresholdX:I

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mUseRatioMaintainedImage:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 282
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 107
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 125
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 132
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 149
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 171
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 218
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 223
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    .line 224
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    .line 225
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 226
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    .line 227
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 228
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 233
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 238
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 243
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 248
    const/16 v3, 0xf

    iput v3, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 258
    const/16 v3, 0xf

    iput v3, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 260
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 265
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    .line 2346
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2520
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2521
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 2522
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    .line 283
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 285
    sget-object v3, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 288
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 290
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 294
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 295
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "themeName":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x230

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    .line 300
    return-void

    .line 295
    .end local v2    # "themeName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 298
    .restart local v2    # "themeName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/HorizontalScrollView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 432
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 434
    .end local v1    # "childWidth":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2254
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 2255
    :cond_0
    const/4 p0, 0x0

    .line 2260
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 2257
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2258
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1716
    if-eqz p1, :cond_0

    .line 1717
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1718
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2603
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v6, :cond_5

    .line 2604
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2607
    .local v0, "restoreCount":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 2608
    :cond_1
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2609
    .local v1, "scrollX":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2610
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2616
    .end local v1    # "scrollX":I
    :goto_0
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v5, :cond_4

    .line 2617
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2622
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2624
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    .line 2628
    .end local v0    # "restoreCount":I
    :goto_2
    return-void

    .line 2612
    .restart local v0    # "restoreCount":I
    :cond_3
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 2613
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 2618
    .end local v2    # "scrollY":I
    :cond_4
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v6, :cond_2

    .line 2619
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2626
    .end local v0    # "restoreCount":I
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    goto :goto_2
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1459
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1460
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1469
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1471
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1472
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1473
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1474
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1475
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1477
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1483
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1486
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1488
    move-object v1, v5

    .line 1489
    move v3, v7

    .line 1472
    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1491
    .restart local v7    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 1495
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1496
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1502
    move-object v1, v5

    goto :goto_2

    .line 1491
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1505
    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v7, :cond_7

    .line 1507
    move-object v1, v5

    .line 1508
    const/4 v3, 0x1

    goto :goto_2

    .line 1509
    :cond_7
    if-eqz v6, :cond_0

    .line 1514
    move-object v1, v5

    goto :goto_2

    .line 1521
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 1428
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1429
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 1430
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1432
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1438
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1396
    const/4 v1, 0x0

    .line 1397
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1398
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1399
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1402
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x2

    const v12, 0x3ecccccd    # 0.4f

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2365
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2492
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2367
    :pswitch_1
    const/4 v3, 0x0

    .line 2368
    .local v3, "offset":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 2370
    .local v5, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    .line 2371
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    .line 2373
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 2376
    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2378
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v8, v7, :cond_1

    .line 2379
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v3, v8, -0x1

    .line 2388
    :goto_1
    if-gez v3, :cond_2

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v8, :cond_2

    .line 2389
    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2390
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v8, v7, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2381
    :cond_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v3, v8, 0x1

    goto :goto_1

    .line 2391
    :cond_2
    if-lez v3, :cond_3

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v8, v5, :cond_3

    .line 2392
    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2393
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v8, v7, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2396
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v4

    .line 2397
    .local v4, "overscrollMode":I
    if-eqz v4, :cond_4

    if-ne v4, v7, :cond_5

    if-lez v5, :cond_5

    :cond_4
    move v0, v7

    .line 2400
    .local v0, "canOverscroll":Z
    :cond_5
    if-eqz v0, :cond_9

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_9

    .line 2401
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_6

    .line 2402
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v8, v7, :cond_a

    .line 2403
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2404
    .local v2, "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2405
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2406
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2407
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2418
    .end local v2    # "height":I
    :cond_6
    :goto_2
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2419
    :cond_7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 2421
    :cond_8
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 2424
    :cond_9
    if-nez v0, :cond_0

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_0

    .line 2425
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 2409
    :cond_a
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v8, v13, :cond_6

    .line 2410
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2411
    .restart local v2    # "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2412
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2413
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2414
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 2432
    .end local v0    # "canOverscroll":Z
    .end local v2    # "height":I
    .end local v3    # "offset":I
    .end local v4    # "overscrollMode":I
    .end local v5    # "range":I
    :pswitch_2
    const/high16 v8, 0x41f00000    # 30.0f

    iget-object v9, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2435
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-ne v8, v7, :cond_d

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    neg-int v1, v8

    .line 2436
    .local v1, "distanceToMove":I
    :goto_3
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 2438
    .local v6, "scrollaleRange":I
    if-gez v1, :cond_b

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gtz v8, :cond_c

    :cond_b
    if-lez v1, :cond_e

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v8, v6, :cond_e

    .line 2440
    :cond_c
    invoke-virtual {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2441
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v7, v13, v8, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2435
    .end local v1    # "distanceToMove":I
    .end local v6    # "scrollaleRange":I
    :cond_d
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_3

    .line 2444
    .restart local v1    # "distanceToMove":I
    .restart local v6    # "scrollaleRange":I
    :cond_e
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v4

    .line 2445
    .restart local v4    # "overscrollMode":I
    if-eqz v4, :cond_f

    if-ne v4, v7, :cond_10

    if-lez v6, :cond_10

    :cond_f
    move v0, v7

    .line 2448
    .restart local v0    # "canOverscroll":Z
    :cond_10
    if-eqz v0, :cond_14

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_14

    .line 2449
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_11

    .line 2450
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-ne v8, v7, :cond_15

    .line 2451
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2452
    .restart local v2    # "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2453
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2454
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2455
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2466
    .end local v2    # "height":I
    :cond_11
    :goto_4
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_13

    .line 2467
    :cond_12
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 2469
    :cond_13
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 2472
    :cond_14
    if-nez v0, :cond_0

    iget-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_0

    .line 2473
    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 2457
    :cond_15
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_11

    .line 2458
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 2459
    .restart local v2    # "height":I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2460
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v12}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2461
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2462
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 2482
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v2    # "height":I
    .end local v4    # "overscrollMode":I
    .end local v6    # "scrollaleRange":I
    :pswitch_3
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v8, :cond_0

    .line 2483
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2484
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private hapticScrollTo(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 2176
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPixelThresholdX:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v1, :cond_1

    .line 2178
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_0

    .line 2179
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 2181
    :cond_0
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 2182
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    .line 2184
    :cond_1
    return-void
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 651
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 652
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 653
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 654
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 659
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 664
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 342
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 343
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 344
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 345
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 347
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 348
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 349
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 351
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 352
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 353
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 672
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 674
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1695
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQCSupported()Z
    .locals 1

    .prologue
    .line 2529
    const/4 v0, 0x0

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2112
    if-ne p0, p1, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return v1

    .line 2116
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2117
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1704
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1706
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1252
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1253
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1257
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1258
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1259
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1260
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1261
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1264
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1257
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 681
    :cond_0
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 1090
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1094
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1096
    :cond_1
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1604
    const/4 v4, 0x1

    .line 1606
    .local v4, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1607
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1608
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 1609
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1611
    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1612
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1613
    move-object v5, p0

    .line 1616
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1617
    const/4 v4, 0x0

    .line 1623
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1625
    :cond_1
    return v4

    .line 1609
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1619
    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1620
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1619
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1878
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1881
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1883
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1885
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1886
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1888
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1899
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1900
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1901
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1902
    if-eqz p2, :cond_2

    .line 1903
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1908
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1900
    goto :goto_0

    .line 1905
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private setupQuickController(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    const v11, 0x108053f

    const v10, 0x108053e

    const v8, 0x108053d

    const v7, 0x108053c

    const/4 v9, 0x0

    .line 2533
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    .line 2534
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    .line 2536
    .local v3, "h":I
    const/4 v2, 0x0

    .line 2537
    .local v2, "btnW":I
    const/4 v1, 0x0

    .line 2539
    .local v1, "btnH":I
    const/4 v0, 0x0

    .line 2541
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2542
    .local v4, "oldLocation":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2544
    packed-switch p1, :pswitch_data_0

    .line 2596
    :goto_0
    if-eqz v0, :cond_0

    .line 2597
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2598
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2600
    :cond_0
    return-void

    .line 2546
    :pswitch_0
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_1

    .line 2547
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2548
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2551
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2552
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2553
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    div-int/lit8 v7, v3, 0x2

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    neg-int v7, v7

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2554
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    invoke-direct {v6, v9, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 2558
    :pswitch_1
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_2

    .line 2559
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2560
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2563
    :cond_2
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2564
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2565
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    .line 2566
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 2569
    :pswitch_2
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_3

    .line 2570
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2571
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2574
    :cond_3
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2575
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2576
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    sub-int v7, v5, v1

    div-int/lit8 v8, v3, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    neg-int v8, v8

    invoke-direct {v0, v6, v7, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2577
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v5, v2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v3, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-direct {v6, v7, v8, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 2581
    :pswitch_3
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_4

    .line 2582
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2583
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2586
    :cond_4
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2587
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2588
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v1

    sub-int v8, v5, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-direct {v0, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    .line 2589
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 2544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 2496
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2498
    const/4 v1, 0x1

    .line 2501
    :goto_0
    return v1

    .line 2499
    :catch_0
    move-exception v0

    .line 2500
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HorizontalScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 396
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 405
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 423
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1637
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1638
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1640
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1642
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1644
    .local v3, "maxJump":I
    if-eqz v4, :cond_4

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1645
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1646
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v8}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1647
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1648
    .local v6, "scrollDelta":I
    if-nez v6, :cond_2

    .line 1687
    :cond_1
    :goto_0
    return v7

    .line 1651
    :cond_2
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1652
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1675
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1682
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1683
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1684
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1685
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1687
    .end local v2    # "descendantFocusability":I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 1655
    .end local v6    # "scrollDelta":I
    :cond_4
    move v6, v3

    .line 1657
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_6

    .line 1658
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1669
    :cond_5
    :goto_2
    if-eqz v6, :cond_1

    .line 1672
    if-ne p1, v10, :cond_7

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1659
    :cond_6
    if-ne p1, v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 1661
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1663
    .local v1, "daRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1665
    .local v5, "screenRight":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_5

    .line 1666
    sub-int v6, v1, v5

    goto :goto_2

    .line 1672
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_7
    neg-int v7, v6

    goto :goto_3
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1791
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1771
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1772
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1773
    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    .line 1786
    .end local v0    # "contentWidth":I
    :goto_0
    return v0

    .line 1777
    .restart local v0    # "contentWidth":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1778
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1779
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1780
    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    .line 1781
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1786
    goto :goto_0

    .line 1782
    :cond_2
    if-le v4, v2, :cond_1

    .line 1783
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1825
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1842
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1843
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1844
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1845
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1847
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1848
    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1849
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1850
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v5, :cond_4

    .line 1853
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1855
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1857
    if-eqz v10, :cond_2

    .line 1858
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1859
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1866
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1867
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1870
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v6

    .line 1850
    goto :goto_0

    .line 1860
    .restart local v10    # "canOverscroll":Z
    :cond_5
    if-le v12, v5, :cond_2

    if-gt v3, v5, :cond_2

    .line 1861
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1920
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1974
    :cond_0
    :goto_0
    return v5

    .line 1922
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1923
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1924
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1926
    .local v4, "screenRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1929
    .local v1, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1930
    add-int/2addr v3, v1

    .line 1934
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1935
    sub-int/2addr v4, v1

    .line 1938
    :cond_3
    const/4 v5, 0x0

    .line 1940
    .local v5, "scrollXDelta":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1945
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1947
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1954
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1955
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1956
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1958
    goto :goto_0

    .line 1950
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1958
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1963
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1965
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1972
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1968
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 875
    .local v2, "action":I
    const/16 v13, 0x9

    if-ne v2, v13, :cond_4

    .line 876
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    .line 878
    .local v10, "toolType":I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 881
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    if-nez v13, :cond_1

    .line 882
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 886
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x2

    if-ne v10, v13, :cond_3

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_hovering"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v7, 0x1

    .line 890
    .local v7, "isHoveringOn":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_hovering_list_scroll"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const/4 v6, 0x1

    .line 893
    .local v6, "isHoverListScrollOn":Z
    :goto_1
    if-eqz v7, :cond_2

    if-nez v6, :cond_3

    .line 894
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 899
    .end local v6    # "isHoverListScrollOn":Z
    .end local v7    # "isHoveringOn":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    .line 900
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 905
    .end local v10    # "toolType":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-nez v13, :cond_7

    .line 906
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1086
    :goto_2
    return v13

    .line 888
    .restart local v10    # "toolType":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 890
    .restart local v7    # "isHoveringOn":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 910
    .end local v7    # "isHoveringOn":Z
    .end local v10    # "toolType":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 911
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 912
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    .line 913
    .local v3, "childCount":I
    const/4 v4, 0x0

    .line 914
    .local v4, "contentRightSide":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v9

    .line 916
    .local v9, "range":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gtz v13, :cond_8

    .line 917
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 922
    :cond_8
    if-eqz v3, :cond_9

    .line 923
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v4, v13, v14

    .line 926
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    const/4 v8, 0x1

    .line 929
    .local v8, "isPossibleTooltype":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-nez v13, :cond_a

    .line 930
    new-instance v13, Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;-><init>(Landroid/widget/HorizontalScrollView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    .line 933
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v11, v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v4, v13

    if-lt v11, v13, :cond_f

    :cond_b
    if-eqz v9, :cond_f

    if-ltz v11, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v11, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gtz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v4, v13

    if-lt v11, v13, :cond_d

    if-gt v11, v4, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lt v13, v9, :cond_d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_f

    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_f

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isLockScreenMode()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 939
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 941
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 944
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 945
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 948
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v11, v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v4, v13

    if-ge v11, v13, :cond_12

    .line 949
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 952
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_13

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_14

    .line 953
    :cond_13
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 955
    :cond_14
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 956
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 957
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 960
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v13, :cond_15

    .line 961
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 962
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 965
    :cond_15
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    .line 926
    .end local v8    # "isPossibleTooltype":Z
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 968
    .restart local v8    # "isPossibleTooltype":Z
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 971
    :cond_18
    const/4 v13, 0x7

    if-ne v2, v13, :cond_19

    .line 972
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->resetTimeout()V

    .line 975
    :cond_19
    packed-switch v2, :pswitch_data_0

    .line 1086
    :cond_1a
    :goto_4
    :pswitch_0
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 977
    :pswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 979
    if-ltz v11, :cond_1b

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v11, v13, :cond_1b

    .line 981
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 983
    const/16 v13, 0x11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 984
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 985
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 988
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v13

    if-eqz v13, :cond_1a

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 989
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 990
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto :goto_4

    .line 993
    :cond_1b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v4, v13

    if-lt v11, v13, :cond_1a

    if-gt v11, v4, :cond_1a

    .line 995
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 997
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 998
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 999
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1002
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v13

    if-eqz v13, :cond_1a

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1003
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1004
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1013
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_1c

    .line 1014
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 1015
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1016
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    .line 1019
    :cond_1c
    if-ltz v11, :cond_1f

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v11, v13, :cond_1f

    .line 1021
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1024
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1e

    .line 1025
    :cond_1d
    const/16 v13, 0x11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 1028
    :cond_1e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 1029
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1032
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-nez v13, :cond_1a

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1033
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1034
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1037
    :cond_1f
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v4, v13

    if-lt v11, v13, :cond_1a

    if-gt v11, v4, :cond_1a

    .line 1039
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1042
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21

    .line 1043
    :cond_20
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 1046
    :cond_21
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 1047
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1050
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isQCSupported()Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-nez v13, :cond_1a

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1051
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->setupQuickController(I)V

    .line 1052
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1060
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 1061
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1064
    :cond_22
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/HorizontalScrollView;->showPointerIcon(I)Z

    .line 1066
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 1067
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 1068
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 1069
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 1072
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_24

    .line 1074
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    .line 1075
    .local v5, "im":Landroid/hardware/input/InputManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_23

    if-eqz v5, :cond_24

    const/4 v13, -0x1

    const/16 v14, -0x100

    const/16 v15, 0x140

    invoke-virtual {v5, v13, v14, v15}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v13

    if-nez v13, :cond_24

    .line 1076
    :cond_23
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1081
    .end local v5    # "im":Landroid/hardware/input/InputManager;
    :cond_24
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 548
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 549
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v2, v1, :cond_2

    .line 550
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 556
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 558
    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 559
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 591
    :goto_0
    return v1

    .line 563
    :cond_1
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 591
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 566
    :cond_3
    if-ne v0, v5, :cond_4

    .line 567
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v2, v5, :cond_2

    goto :goto_0

    .line 571
    :cond_4
    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 572
    :cond_5
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v2, v5, :cond_2

    .line 574
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 575
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 578
    :cond_6
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 579
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 582
    :cond_7
    iput-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 585
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 586
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2216
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2217
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 2218
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2219
    .local v2, "scrollX":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2221
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2223
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2224
    neg-int v4, v0

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2225
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2226
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2227
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2229
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2231
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2233
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 2234
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2236
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2237
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2239
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2240
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2241
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2243
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2248
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v4, :cond_4

    .line 2249
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2251
    :cond_4
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2293
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2294
    const-string v0, "layout:fillViewPort"

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2295
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x11

    const/16 v6, 0x42

    .line 603
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 605
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_2

    .line 606
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 609
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 611
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-virtual {v3, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 647
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v4

    .line 617
    :cond_2
    const/4 v2, 0x0

    .line 618
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 642
    :goto_1
    if-eqz v2, :cond_3

    .line 643
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->playSoundEffect(I)V

    .end local v1    # "direction":I
    :cond_3
    move v4, v2

    .line 647
    goto :goto_0

    .line 623
    .restart local v1    # "direction":I
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 624
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 628
    :goto_2
    const/16 v1, 0x11

    .line 629
    goto :goto_1

    .line 626
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_2

    .line 631
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 632
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 636
    :goto_3
    const/16 v1, 0x42

    .line 637
    goto :goto_1

    .line 634
    :cond_5
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_3

    .line 639
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_4

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    .prologue
    .line 2128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 2130
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 2132
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2135
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 2137
    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 2138
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 2141
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    .line 2142
    move-object/from16 v14, p0

    .line 2145
    :cond_0
    if-eq v14, v12, :cond_1

    .line 2146
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2149
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2151
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    .line 2135
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 2146
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v13    # "movingRight":Z
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1573
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1574
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1576
    .local v3, "width":I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1577
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1579
    if-eqz v1, :cond_0

    .line 1580
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1581
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1582
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1583
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1584
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1588
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    .line 1573
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1363
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x0

    .line 313
    :goto_0
    return v1

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 309
    .local v0, "length":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 310
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 313
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 337
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 319
    const/4 v3, 0x0

    .line 329
    :goto_0
    return v3

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 323
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 324
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 325
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 326
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 329
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 817
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 818
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 819
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 821
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 822
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 823
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 826
    const/4 v0, 0x1

    .line 832
    :cond_0
    const/4 v1, 0x0

    .line 833
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 835
    :goto_0
    return v1

    .line 833
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1796
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1801
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1804
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1806
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1807
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1812
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1814
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1817
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1820
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1821
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 361
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 370
    :cond_0
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v0, :cond_1

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 374
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 375
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1297
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1271
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1274
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 1278
    .local v1, "hscroll":F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 1279
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1280
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 1281
    .local v4, "range":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1282
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 1283
    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    .line 1284
    const/4 v2, 0x0

    .line 1288
    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    .line 1289
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1290
    const/4 v5, 0x1

    goto :goto_0

    .line 1276
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_1

    .line 1285
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    .line 1286
    move v2, v4

    goto :goto_2

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1388
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1389
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1390
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1391
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1392
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1393
    return-void

    .line 1388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1369
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1370
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1371
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1372
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1373
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 1374
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1375
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1377
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 1378
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1379
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1382
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 705
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 709
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 807
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 720
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 721
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 726
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 727
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 728
    const-string v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 733
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v11, v1

    .line 734
    .local v11, "x":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 735
    .local v12, "xDiff":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 736
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 737
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 738
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 739
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 740
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 746
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v11, v1

    .line 747
    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v11, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 748
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 749
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 757
    :cond_4
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 758
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_5

    .line 759
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 761
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 763
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 764
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 771
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v1

    if-eqz v1, :cond_6

    move v3, v0

    :cond_6
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 778
    .end local v11    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 779
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 780
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 785
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 786
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 787
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 791
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 795
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 796
    .restart local v10    # "pointerIndex":I
    if-ltz v10, :cond_0

    .line 799
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_1

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2042
    const/4 v9, 0x0

    .line 2043
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 2045
    .local v7, "childMargins":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2046
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 2047
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2048
    .local v8, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v7, v0, v1

    .line 2051
    .end local v8    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRightWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v6, v0, v7

    .line 2054
    .local v6, "available":I
    if-le v9, v6, :cond_4

    const/4 v5, 0x1

    .local v5, "forceLeftGravity":Z
    :goto_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    .line 2056
    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalScrollView;->layoutChildren(IIIIZ)V

    .line 2058
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 2060
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2063
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2065
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2066
    const/4 v0, 0x0

    sub-int v1, p4, p2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    sub-int v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2068
    .local v10, "scrollRange":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v0, :cond_6

    .line 2069
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    sub-int v0, v10, v0

    :goto_1
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2072
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2079
    :cond_2
    :goto_2
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-le v0, v10, :cond_7

    .line 2080
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2087
    .end local v10    # "scrollRange":I
    :cond_3
    :goto_3
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 2088
    return-void

    .line 2054
    .end local v5    # "forceLeftGravity":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 2069
    .restart local v5    # "forceLeftGravity":Z
    .restart local v10    # "scrollRange":I
    :cond_5
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    goto :goto_1

    .line 2074
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2075
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, v10, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_2

    .line 2081
    :cond_7
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gez v0, :cond_3

    .line 2082
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 482
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 484
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 489
    .local v5, "widthMode":I
    if-eqz v5, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 494
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 496
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 499
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 501
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 502
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 503
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 505
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 510
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_2
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    if-eqz v6, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1309
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1311
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1312
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1313
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1314
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 1315
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1316
    if-eqz p3, :cond_0

    .line 1317
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1323
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1324
    return-void

    .line 1320
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2002
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2003
    const/16 p1, 0x42

    .line 2008
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2013
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 2021
    :cond_1
    :goto_2
    return v1

    .line 2004
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2005
    const/16 p1, 0x11

    goto :goto_0

    .line 2008
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2017
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2021
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2265
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/HorizontalScrollView$SavedState;

    if-nez v1, :cond_1

    .line 2268
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2275
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2271
    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    .line 2272
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2273
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2274
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2279
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2282
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2287
    :goto_0
    return-object v0

    .line 2284
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2285
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2286
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    :goto_1
    iput v2, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2092
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2094
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2095
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 2098
    :cond_1
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 2100
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2101
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2102
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2103
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2104
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1101
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 1106
    .local v15, "action":I
    and-int/lit16 v2, v15, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1246
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1108
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1109
    const/4 v2, 0x0

    goto :goto_1

    .line 1111
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 1112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1113
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    .line 1114
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1122
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1127
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1128
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    .line 1111
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1132
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 1133
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 1134
    const/16 v16, 0x0

    .line 1135
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1136
    const-string v2, "HorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1140
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1141
    .local v25, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v3, v2, v25

    .line 1142
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v2, v4, :cond_7

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1144
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_6

    .line 1145
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1147
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1148
    if-lez v3, :cond_c

    .line 1149
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v3, v2

    .line 1154
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1156
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1158
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move/from16 v19, v0

    .line 1159
    .local v19, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move/from16 v20, v0

    .line 1160
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v7

    .line 1161
    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v21

    .line 1162
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_d

    if-lez v7, :cond_d

    :cond_8
    const/16 v17, 0x1

    .line 1167
    .local v17, "canOverscroll":Z
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1178
    :cond_9
    :goto_5
    if-eqz v17, :cond_0

    .line 1179
    add-int v23, v19, v3

    .line 1180
    .local v23, "pulledToX":I
    if-gez v23, :cond_f

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1193
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1195
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1151
    .end local v7    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v3, v2

    goto/16 :goto_3

    .line 1162
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v7    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 1173
    .restart local v17    # "canOverscroll":Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_9

    .line 1174
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    goto :goto_5

    .line 1186
    .restart local v23    # "pulledToX":I
    :cond_f
    move/from16 v0, v23

    if-le v0, v7, :cond_a

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 1201
    .end local v3    # "deltaX":I
    .end local v7    # "range":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1203
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1204
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1206
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 1207
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v4, :cond_11

    .line 1208
    move/from16 v0, v18

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 1217
    :cond_10
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1219
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1210
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1212
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 1228
    .end local v18    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1229
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1230
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1232
    :cond_12
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1234
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1243
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 381
    if-nez p1, :cond_0

    .line 383
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 387
    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1537
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1538
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1540
    .local v3, "width":I
    if-eqz v1, :cond_2

    .line 1541
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1542
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1543
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1544
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1545
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1546
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1555
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1557
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    .line 1537
    goto :goto_0

    .line 1550
    .restart local v1    # "right":Z
    .restart local v3    # "width":I
    :cond_2
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1551
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 1552
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1329
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1358
    :goto_0
    return v2

    .line 1332
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1358
    goto :goto_0

    .line 1335
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1336
    goto :goto_0

    .line 1338
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1339
    .local v1, "viewportWidth":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1340
    .local v0, "targetScrollX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_2

    .line 1341
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1344
    goto :goto_0

    .line 1347
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1348
    goto :goto_0

    .line 1350
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1351
    .restart local v1    # "viewportWidth":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1352
    .restart local v0    # "targetScrollX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_4

    .line 1353
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1356
    goto :goto_0

    .line 1332
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1979
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1980
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1985
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1986
    return-void

    .line 1983
    :cond_0
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2028
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2031
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 685
    if-eqz p1, :cond_0

    .line 686
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 688
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 689
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 2037
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2038
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2161
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2162
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2163
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 2164
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 2165
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2166
    :cond_0
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2167
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    .line 2169
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2172
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 460
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 461
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 463
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 867
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 868
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 847
    if-eqz p1, :cond_0

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 859
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 860
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x60000000

    .line 2188
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 2189
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_1

    .line 2190
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2191
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2192
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 2194
    const/4 v0, 0x0

    .line 2195
    .local v0, "IsParentThemeDeviceDefault":Z
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2196
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2197
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 2198
    const/4 v0, 0x1

    .line 2200
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_1

    .line 2201
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2202
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2210
    .end local v0    # "IsParentThemeDeviceDefault":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2211
    return-void

    .line 2207
    :cond_2
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2208
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 478
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 205
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 206
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1302
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1732
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1736
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1737
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1738
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1739
    .local v5, "width":I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1740
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1741
    .local v2, "maxX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1742
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1744
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1745
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1752
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1747
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1748
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1750
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1762
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1763
    return-void
.end method

.method protected twUpdateBackgroundBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 524
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 530
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 531
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 533
    .end local v1    # "height":I
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method

.method public twUseRatioMaintainedImage()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    .line 519
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 188
    return-void
.end method
