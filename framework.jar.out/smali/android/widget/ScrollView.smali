.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field private static final THRESHOLD_RATIO_Y:I = 0x50

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:F

.field private final SWITCH_CONTROL_SCROLL_DURATION_GAP:F

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mCanScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollY:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollY:I

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPixelThresholdY:I

.field private mPreviousTextViewScroll:Z

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mRequestedChildRect:Landroid/graphics/Rect;

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSipDelta:I

.field private mSipResizeAnimationRunning:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mLinear:Z

    iput-boolean v5, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    iput v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v4, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iput v4, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    iput-boolean v5, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    const v1, 0x3fcccccd    # 1.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:F

    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    const/high16 v1, 0x40200000    # 2.5f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_DURATION_GAP:F

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    iput-boolean v5, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    iput v4, p0, Landroid/widget/ScrollView;->mSipDelta:I

    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    new-instance v1, Landroid/widget/ScrollView$1;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    iput v8, p0, Landroid/widget/ScrollView;->mQCLocation:I

    iput v4, p0, Landroid/widget/ScrollView;->mQCstate:I

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    return p1
.end method

.method private autoScrollWithDuration(F)V
    .locals 5
    .param p1, "duration"    # F

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoScrollWithDuration() duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0, v4, v1, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mLinear:Z

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    :cond_0
    const/4 p0, 0x0

    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    .local v0, "scrollRange":I
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->doScrollY(I)V

    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    .local v0, "scrollOffset":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    return-void
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_5

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    :goto_1
    return-void

    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_5
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-ne v2, v3, :cond_3

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    :cond_6
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    move-object v1, v5

    move v3, v8

    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    move-object v1, v5

    goto :goto_2

    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_0

    move-object v1, v5

    goto :goto_2

    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_3

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_2
    return-void

    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flingWithoutAcc(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingWithoutAcc() velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v13, v0, v1

    .local v13, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    .local v12, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v12, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v13, 0x2

    const/4 v11, 0x1

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .end local v12    # "bottom":I
    .end local v13    # "height":I
    :cond_1
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ScrollView;->mQCstate:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    .local v2, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .local v4, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, -0x1

    :goto_1
    if-gez v2, :cond_2

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v7, :cond_2

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, 0x1

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v4, :cond_3

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .local v3, "overscrollMode":I
    if-eqz v3, :cond_4

    const/4 v7, 0x1

    if-ne v3, v7, :cond_9

    if-lez v4, :cond_9

    :cond_4
    const/4 v0, 0x1

    .local v0, "canOverscroll":Z
    :goto_2
    if-eqz v0, :cond_8

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .end local v6    # "width":I
    :cond_5
    :goto_3
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_8
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .end local v0    # "canOverscroll":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .restart local v0    # "canOverscroll":Z
    :cond_a
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .end local v0    # "canOverscroll":Z
    .end local v2    # "offset":I
    .end local v3    # "overscrollMode":I
    .end local v4    # "range":I
    .end local v6    # "width":I
    :pswitch_2
    const/4 v7, 0x1

    const v8, 0x453b8000    # 3000.0f

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    neg-int v1, v7

    .local v1, "distanceToMove":I
    :goto_4
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .local v5, "scrollaleRange":I
    if-gez v1, :cond_b

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v7, :cond_c

    :cond_b
    if-lez v1, :cond_e

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v5, :cond_e

    :cond_c
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v1    # "distanceToMove":I
    .end local v5    # "scrollaleRange":I
    :cond_d
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_4

    .restart local v1    # "distanceToMove":I
    .restart local v5    # "scrollaleRange":I
    :cond_e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .restart local v3    # "overscrollMode":I
    if-eqz v3, :cond_f

    const/4 v7, 0x1

    if-ne v3, v7, :cond_14

    if-lez v5, :cond_14

    :cond_f
    const/4 v0, 0x1

    .restart local v0    # "canOverscroll":Z
    :goto_5
    if-eqz v0, :cond_13

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_13

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_10

    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .end local v6    # "width":I
    :cond_10
    :goto_6
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_12
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_13
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .end local v0    # "canOverscroll":Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_5

    .restart local v0    # "canOverscroll":Z
    :cond_15
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v3    # "overscrollMode":I
    .end local v5    # "scrollaleRange":I
    .end local v6    # "width":I
    :pswitch_3
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToTopEnd()V

    goto/16 :goto_0

    :cond_16
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQCSupported()Z
    .locals 2

    .prologue
    sget v0, Landroid/widget/ScrollView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playQCBtnFadeIn()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playQCBtnFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v3, 0x1

    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .local v1, "containerTop":I
    add-int v0, v1, v4

    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    move-object v5, p0

    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    return v3

    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .end local v0    # "scrollDelta":I
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .local v0, "delta":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_1
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_2
    move v1, v2

    goto :goto_0

    .restart local v1    # "scroll":Z
    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private setupQuickController(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .local v9, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v7, v14, v15

    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v7, 0x2

    add-int v5, v14, v15

    .local v5, "centerX":I
    const/4 v4, 0x0

    .local v4, "btnW":I
    const/4 v3, 0x0

    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mQCLocation:I

    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v6, 0x1

    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v14, "cocktailbarservice"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v6, 0x0

    :cond_0
    if-eqz v6, :cond_2

    const/4 v14, 0x2

    new-array v10, v14, [I

    fill-array-data v10, :array_0

    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v10, v14

    if-gez v14, :cond_1

    const/4 v14, 0x0

    aget v14, v10, v14

    neg-int v12, v14

    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v12, v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v5, v14

    .end local v12    # "overlappedW":I
    :cond_1
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_2

    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v14, v15

    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v12, v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_2

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_0
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080544

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080545

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050299

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050299

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    const/16 v16, 0x0

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :pswitch_2
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080542

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080543

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050299

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050299

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    sub-int v16, v9, v3

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollView"

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

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    sub-int v6, v1, v5

    goto :goto_1

    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v6, :cond_4

    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v0, :cond_5

    invoke-super {p0, v12, v13}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :goto_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eqz v10, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    if-gez v13, :cond_6

    if-ltz v4, :cond_6

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    :goto_3
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v5

    goto :goto_0

    .restart local v10    # "canOverscroll":Z
    :cond_5
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_1

    :cond_6
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_7
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_3
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    move v7, v8

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .local v6, "screenTop":I
    add-int v5, v6, v4

    .local v5, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    .local v3, "fadingEdge":I
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-lez v9, :cond_2

    add-int/2addr v6, v3

    :cond_2
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_3

    sub-int/2addr v5, v3

    :cond_3
    const/4 v7, 0x0

    .local v7, "scrollYDelta":I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    if-le v9, v5, :cond_5

    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-le v9, v6, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v4, :cond_4

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    add-int/2addr v7, v9

    :goto_1
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    sub-int v2, v0, v5

    .local v2, "distanceToBottom":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_0

    .end local v0    # "bottom":I
    .end local v2    # "distanceToBottom":I
    :cond_4
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    add-int/2addr v7, v9

    goto :goto_1

    :cond_5
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-ge v8, v6, :cond_7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v5, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v4, :cond_6

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v5, v8

    sub-int/2addr v7, v8

    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    :cond_6
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_7
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v8, :cond_0

    if-le v5, v1, :cond_0

    sub-int v7, v5, v1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-le v4, v2, :cond_1

    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/16 v10, 0x9

    if-ne v0, v10, :cond_4

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    .local v7, "toolType":I
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_1
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v4, 0x1

    .local v4, "isHoveringOn":Z
    :goto_0
    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering_list_scroll"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v3, 0x1

    .local v3, "isHoverListScrollOn":Z
    :goto_1
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .end local v3    # "isHoverListScrollOn":Z
    .end local v4    # "isHoveringOn":Z
    :cond_3
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x3

    if-ne v7, v10, :cond_4

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .end local v7    # "toolType":I
    :cond_4
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v10, :cond_7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_2
    return v10

    .restart local v7    # "toolType":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "isHoveringOn":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .end local v4    # "isHoveringOn":Z
    .end local v7    # "toolType":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .local v9, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .local v6, "range":I
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v10, :cond_8

    new-instance v10, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v10, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    :cond_8
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v10, :cond_9

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v10, :cond_a

    :cond_9
    const/4 v10, 0x1

    const/high16 v11, 0x41c80000    # 25.0f

    iget-object v12, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/4 v10, 0x1

    const/high16 v11, 0x41c80000    # 25.0f

    iget-object v12, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_19

    const/4 v5, 0x1

    .local v5, "isPossibleTooltype":Z
    :goto_3
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v9, v10, :cond_c

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_10

    :cond_c
    if-lez v8, :cond_10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v10

    if-gt v8, v10, :cond_10

    if-eqz v6, :cond_10

    if-ltz v9, :cond_d

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_d

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v10, :cond_d

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    :cond_d
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_e

    if-gt v9, v2, :cond_e

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v10, v6, :cond_e

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_10

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v10

    if-eqz v10, :cond_1a

    :cond_10
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    :cond_11
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_12
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v9, v10, :cond_13

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_14

    :cond_13
    if-lez v8, :cond_14

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v10

    if-le v8, v10, :cond_15

    :cond_14
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_15
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_16

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_17

    :cond_16
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    :cond_17
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v10, :cond_18

    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_2

    .end local v5    # "isPossibleTooltype":Z
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_3

    .restart local v5    # "isPossibleTooltype":Z
    :cond_1a
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_1b
    packed-switch v0, :pswitch_data_0

    :cond_1c
    :goto_4
    :pswitch_0
    const/4 v10, 0x1

    goto/16 :goto_2

    :pswitch_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-ltz v9, :cond_1d

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_1d

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const/16 v10, 0xb

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    :cond_1d
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_1c

    if-gt v9, v2, :cond_1c

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const/16 v10, 0xf

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x4

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    :pswitch_2
    iget-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_1e

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/16 v10, 0xa

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_2

    :cond_1e
    if-ltz v9, :cond_21

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v9, v10, :cond_21

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v10, :cond_1f

    iget v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_20

    :cond_1f
    const/16 v10, 0xb

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    :cond_20
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v10, :cond_1c

    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    :cond_21
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v2, v10

    if-lt v9, v10, :cond_1c

    if-gt v9, v2, :cond_1c

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v10, :cond_22

    iget v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_23

    :cond_22
    const/16 v10, 0xf

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    :cond_23
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v10, :cond_1c

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x4

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->setupQuickController(I)V

    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    :pswitch_3
    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_24
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iget v10, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_25

    iget-object v10, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_25
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_2

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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 3
    .param p1, "isStart"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    iput v1, p0, Landroid/widget/ScrollView;->mSipDelta:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .local v7, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .local v5, "range":I
    const/4 v4, 0x0

    .local v4, "needToScroll":Z
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v8, :cond_0

    new-instance v8, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    :cond_0
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v8, :cond_1

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v8, :cond_2

    :cond_1
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    const/4 v3, 0x1

    .local v3, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    if-nez v0, :cond_c

    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_4
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_5
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    const/4 v8, 0x1

    :goto_1
    return v8

    .end local v0    # "action":I
    .end local v3    # "isPossibleTooltype":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .restart local v0    # "action":I
    .restart local v3    # "isPossibleTooltype":Z
    :cond_7
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    :cond_8
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v8, :cond_9

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_a

    :cond_9
    if-lez v6, :cond_a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v8

    if-gt v6, v8, :cond_a

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_11

    :cond_a
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_b
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    :cond_c
    const/4 v8, 0x2

    if-ne v0, v8, :cond_d

    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    goto :goto_1

    :cond_d
    const/4 v8, 0x1

    if-eq v0, v8, :cond_e

    const/4 v8, 0x3

    if-ne v0, v8, :cond_8

    :cond_e
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_f
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_10
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_11
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_12
    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    :pswitch_1
    if-eqz v4, :cond_19

    if-ltz v7, :cond_15

    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v8, :cond_15

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_13

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_13
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_14
    :goto_3
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto :goto_2

    :cond_15
    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_17

    if-gt v7, v2, :cond_17

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_16

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_16
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_17
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_18
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_3

    :cond_19
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_3

    :pswitch_2
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_1a
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .local v2, "restoreCount":I
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    return-void

    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    const/4 v4, 0x0

    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_0

    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    const/4 v4, 0x0

    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v1, 0x0

    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_3

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_3

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .local v2, "span":I
    if-ge v2, v1, :cond_1

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v2, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method protected hapticScrollTo(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPixelThresholdY:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v1, :cond_0

    iput p1, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    :cond_0
    return-void
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

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
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void

    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    const-string v0, "ScrollView"

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

    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    :cond_5
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_6

    iput v11, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v0

    :cond_7
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_8

    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    iput-object v4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v3, v3, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput-object v4, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, "childHeight":I
    :goto_0
    sub-int v3, p5, p3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v1, :cond_4

    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_4
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_2

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v7, v9, :cond_2

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .local v5, "heightPadding":I
    :goto_1
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "heightPadding":I
    .end local v8    # "widthPadding":I
    :cond_2
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    if-nez p4, :cond_0

    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    return-void

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

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/16 p1, 0x82

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return v1

    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-nez v3, :cond_2

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget v3, p0, Landroid/widget/ScrollView;->mSipDelta:I

    if-le p4, p2, :cond_3

    sub-int v2, p4, p2

    :cond_3
    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mSipDelta:I

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_4
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v21, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-lez v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v26, v0

    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v27

    .local v27, "overscrollMode":I
    if-eqz v27, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    :cond_b
    const/16 v23, 0x1

    .local v23, "canOverscroll":Z
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v11, v2, v26

    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_3

    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_e
    const/16 v23, 0x0

    goto :goto_4

    .restart local v23    # "canOverscroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    goto :goto_5

    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_10
    if-eqz v23, :cond_1

    add-int v29, v26, v4

    .local v29, "pulledToY":I
    if-gez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    :cond_13
    move/from16 v0, v29

    if-le v0, v8, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_15

    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    :cond_14
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_16
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_18

    :cond_17
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .local v2, "height":I
    if-eqz v1, :cond_2

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    goto :goto_0

    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .local v1, "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v4, :cond_3

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .restart local v1    # "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v4, :cond_4

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_2
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_DOWN: CASE auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v3, 0xfa0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0

    :sswitch_3
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_UP: CASE auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v3, -0xfa0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fling(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_ON: auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_7

    const v3, 0x3fcccccd    # 1.6f

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_SPEED_UP: speed up, current duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    sub-float/2addr v3, v7

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    :cond_8
    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_AUTOSCROLL_SPEED_DOWN: CASE slow down, current duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const/high16 v4, 0x40200000    # 2.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    add-float/2addr v3, v7

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    :cond_a
    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "ScrollView"

    const-string v5, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v3, v3, v3}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "ScrollView"

    const-string v5, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_3
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_7
        0x10000000 -> :sswitch_5
        0x20000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v4, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .local v2, "screenTop":I
    add-int v4, v0, v2

    iget v5, p0, Landroid/widget/ScrollView;->mSipDelta:I

    add-int v1, v4, v5

    .local v1, "screenBottom":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    iget-object v4, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :goto_0
    return v3

    .restart local v0    # "height":I
    .restart local v1    # "screenBottom":I
    .restart local v2    # "screenTop":I
    :cond_0
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showEdgeEffectIfNecessary(IF)V
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "multiplicator"    # F

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .local v3, "overscrollMode":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .local v4, "range":I
    if-eqz v3, :cond_0

    if-ne v3, v0, :cond_4

    if-lez v4, :cond_4

    .local v0, "canOverscroll":Z
    :cond_0
    :goto_0
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v2, "oldScrollY":I
    add-int v1, v2, p1

    .local v1, "newScrollY":I
    if-eqz v0, :cond_3

    if-gez v1, :cond_5

    const-string v5, "ScrollView"

    const-string v6, "showBlueLightIfNecessary() reached the TOP!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_3
    return-void

    .end local v0    # "canOverscroll":Z
    .end local v1    # "newScrollY":I
    .end local v2    # "oldScrollY":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "canOverscroll":Z
    .restart local v1    # "newScrollY":I
    .restart local v2    # "oldScrollY":I
    :cond_5
    if-le v1, v4, :cond_1

    const-string v5, "ScrollView"

    const-string v6, "showBlueLightIfNecessary() reached the BOTTOM!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v8, v0, v4

    .local v8, "duration":J
    const-wide/16 v0, 0xfa

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v7, v0, v1

    .local v7, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .local v6, "bottom":I
    const/4 v0, 0x0

    sub-int v1, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .local v10, "maxY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v2, "scrollY":I
    const/4 v0, 0x0

    add-int v1, v2, p2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .restart local v2    # "scrollY":I
    .restart local v6    # "bottom":I
    .restart local v7    # "height":I
    .restart local v10    # "maxY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_2
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    return-void
.end method

.method public twSetSmoothScrollEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->twSetSmoothScrollEnable(Z)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    return-void
.end method
