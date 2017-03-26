.class public abstract Lcom/samsung/android/glview/GLAbsList;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "GLAbsList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/samsung/android/glview/GLView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLAbsList$MainHandler;,
        Lcom/samsung/android/glview/GLAbsList$ScrollListener;,
        Lcom/samsung/android/glview/GLAbsList$ItemSelectListener;,
        Lcom/samsung/android/glview/GLAbsList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 1.0f

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.5f

.field private static final BOUNCING_DECELERATION_DIP:F = 30.0f

.field private static final DEFAULT_OVER_SCROLL_START_OFFSET_DIP:I = -0x2

.field private static final DEFAULT_SCROLLBAR_PADDING_DIP:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 25.0f

.field private static final ENABLE_DECELERATION_TIMEOUT:I = 0x1f4

.field private static final FLING_DECELERATION_DIP:F = 40.0f

.field private static final MESSAGE_ENABLE_DECELERATION:I = 0x2

.field private static final MESSAGE_HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLAbsList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.01f

.field private static final VELOCITY_REVISE_THRESHOLD_DIP:F = 5.0f


# instance fields
.field protected mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

.field private mBounceImageTop:Lcom/samsung/android/glview/GLImage;

.field protected mBouncing:Z

.field private final mBouncingDeceleration:F

.field protected mContentHeight:F

.field protected mContentWidth:F

.field private mDownEventX:F

.field private mDownEventY:F

.field private final mDragOutDistanceLimit:F

.field private mEnableBounceDeceleration:Z

.field private mEnableOverScrollEffect:Z

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingDeceleration:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mIsDecelerationHandlerMessageExecuted:Z

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastEventX:F

.field private mLastEventY:F

.field private mLastFullyVisibleViewIndex:I

.field private mListHeight:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field private mListWidth:F

.field protected mLock:Ljava/lang/Object;

.field protected mMainHandler:Landroid/os/Handler;

.field private mOverScrollStartOffset:F

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field protected mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

.field private mScrollBarAlpha:F

.field private mScrollBarAutoHide:Z

.field private mScrollBarOffset:F

.field private mScrollBarPadding:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

.field protected mScrollOrientation:I

.field private mScrollRequested:Z

.field protected mScrollSumX:F

.field protected mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

.field private mScrolling:Z

.field private final mVelocityReviseThreshold:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 275
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 118
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    .line 126
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 130
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 134
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    .line 138
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    .line 146
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 150
    new-instance v0, Lcom/samsung/android/glview/GLAbsList$MainHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLAbsList$MainHandler;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    .line 156
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    .line 160
    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    .line 164
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 168
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 172
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    .line 176
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    .line 180
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 184
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 188
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 192
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 196
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 200
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 204
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 208
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 212
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 224
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    .line 228
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    .line 232
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 236
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 237
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 239
    iput v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 240
    iput v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    .line 246
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    .line 247
    iput v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    .line 251
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    .line 255
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 259
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 277
    iput p4, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 278
    iput p5, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    .line 291
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLAbsList;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLAbsList;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLAbsList;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    return p1
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x0

    .line 298
    instance-of v2, p1, Lcom/samsung/android/glview/GLAbsList;

    if-eqz v2, :cond_0

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 302
    .local v1, "paddings":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    .local v0, "childPaddings":Landroid/graphics/Rect;
    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 306
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 311
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 315
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 316
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 318
    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 320
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 324
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 325
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 329
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 330
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 333
    :cond_2
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 334
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 335
    return-void

    .line 308
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 313
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 322
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 327
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method protected checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    .line 1193
    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1194
    const/4 v0, 0x0

    .line 1195
    .local v0, "ret":Z
    :try_start_0
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 1196
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    .line 1199
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1203
    :cond_0
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1205
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 1206
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 1208
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 1209
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1210
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1211
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1214
    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 1216
    :cond_2
    const/4 v0, 0x1

    .line 1286
    :cond_3
    :goto_0
    monitor-exit v2

    return v0

    .line 1217
    :cond_4
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    .line 1220
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_5

    .line 1221
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1224
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1225
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    .line 1226
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_6

    .line 1228
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 1229
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1230
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1231
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1234
    :cond_6
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 1236
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 1238
    :cond_8
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1239
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1287
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1241
    :cond_9
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1242
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_d

    .line 1244
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_a

    .line 1245
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1248
    :cond_a
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1250
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_c

    .line 1251
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_b

    .line 1253
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    .line 1254
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1255
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1256
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1259
    :cond_b
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 1261
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1262
    :cond_d
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    .line 1264
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_e

    .line 1265
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1268
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1269
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_10

    .line 1270
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_f

    .line 1272
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f

    .line 1273
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1274
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1275
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1278
    :cond_f
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 1280
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1282
    :cond_11
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1283
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    .line 354
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getLastFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getScrollBarLength()F
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v0

    .line 409
    :goto_0
    return v0

    .line 405
    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v0

    goto :goto_0

    .line 408
    :cond_1
    const-string v0, "GLAbsList"

    const-string v1, "orientation value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollOrientation()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1294
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1295
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    if-nez v0, :cond_1

    .line 1296
    :cond_0
    monitor-exit v1

    .line 1318
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 1299
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 1300
    monitor-exit v1

    goto :goto_0

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1303
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation(F)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1304
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v2, Lcom/samsung/android/glview/GLAbsList$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/glview/GLAbsList$1;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1316
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 1317
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 456
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 461
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 462
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    .line 463
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 467
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/glview/GLAbsList$Adapter;->reset()V

    .line 468
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 469
    return-void
.end method

.method public isOverScrollEffectEnabled()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "scrollable":Z
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v3, v1, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    .line 489
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 484
    goto :goto_0

    .line 485
    :cond_2
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 494
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onAlphaUpdated()V

    .line 495
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 504
    :cond_2
    return-void
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 511
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLAbsList;->translate(FF)V

    .line 512
    return-void
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 519
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 527
    return-void
.end method

.method protected onDraw()V
    .locals 21

    .prologue
    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1326
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    if-eqz v15, :cond_0

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->scrollToVisible()Z

    .line 1330
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move/from16 v17, v0

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1331
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move/from16 v17, v0

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v6

    .line 1335
    .local v6, "fps":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v15

    if-nez v15, :cond_d

    .line 1337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1338
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1339
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/glview/GLView;

    .line 1340
    .local v13, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v13, :cond_1

    .line 1344
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v15, v0, v1}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_0

    .line 1689
    .end local v6    # "fps":I
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .end local v13    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1346
    .restart local v6    # "fps":I
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_3

    .line 1347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    .line 1350
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_4

    .line 1351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1356
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_b

    .line 1357
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1358
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_5

    .line 1359
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1365
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_c

    .line 1366
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1367
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_6

    .line 1368
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1632
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-eqz v15, :cond_8

    .line 1633
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1635
    :cond_8
    const/4 v4, 0x0

    .line 1636
    .local v4, "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getMatrix()[F

    move-result-object v11

    .line 1637
    .local v11, "matrix":[F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1640
    .local v5, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1641
    .local v10, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v12

    .line 1642
    .local v12, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v12, :cond_42

    .line 1643
    invoke-virtual {v10, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/glview/GLView;

    .line 1645
    .restart local v13    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v4, :cond_9

    invoke-virtual {v13}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v15

    if-nez v15, :cond_9

    .line 1646
    if-nez v8, :cond_41

    .line 1647
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 1648
    const/4 v4, 0x1

    .line 1655
    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    invoke-virtual {v13}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v15

    if-nez v15, :cond_a

    .line 1656
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    .line 1659
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1661
    invoke-virtual {v13, v11, v5}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1642
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1361
    .end local v4    # "checked":Z
    .end local v5    # "clipRect":Landroid/graphics/Rect;
    .end local v8    # "i":I
    .end local v10    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    .end local v11    # "matrix":[F
    .end local v12    # "size":I
    .end local v13    # "view":Lcom/samsung/android/glview/GLView;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1362
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_5

    .line 1363
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 1370
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1371
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_6

    .line 1372
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 1374
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-eqz v15, :cond_3a

    .line 1376
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_22

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v17, v0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v7

    .line 1379
    .local v7, "height":F
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    div-float v15, v15, v17

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1381
    .local v3, "alpha":F
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_19

    .line 1384
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1385
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1386
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_7

    .line 1377
    .end local v3    # "alpha":F
    .end local v7    # "height":F
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_5

    .line 1379
    .restart local v7    # "height":F
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    div-float v3, v15, v17

    goto :goto_6

    .line 1388
    .restart local v3    # "alpha":F
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_11

    .line 1389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1393
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v15, :cond_13

    .line 1394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v15, v3}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1396
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_12

    .line 1397
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1398
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1399
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v17, -0x40800000    # -1.0f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1402
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1405
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v15, :cond_15

    .line 1406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1412
    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_17

    .line 1413
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1424
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move/from16 v17, v0

    add-float v15, v15, v17

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_16

    .line 1426
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1427
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1428
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 1587
    .end local v3    # "alpha":F
    .end local v7    # "height":F
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v15, :cond_6

    .line 1590
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1591
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_36

    .line 1592
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_a

    .line 1416
    .restart local v3    # "alpha":F
    .restart local v7    # "height":F
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-lez v15, :cond_18

    .line 1417
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_8

    .line 1419
    :cond_18
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_8

    .line 1430
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_19
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move/from16 v17, v0

    add-float v15, v15, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v17

    cmpg-float v15, v15, v17

    if-gez v15, :cond_16

    .line 1433
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1434
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1435
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 1437
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_1b

    .line 1438
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v7, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1442
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v15, :cond_1d

    .line 1443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v15, v3}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1445
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_1c

    .line 1446
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1448
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v17, -0x40800000    # -1.0f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1451
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1455
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v15, :cond_1f

    .line 1456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 1457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1462
    :cond_1e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_20

    .line 1463
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1474
    :cond_1f
    :goto_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move/from16 v17, v0

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move/from16 v17, v0

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v7, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_16

    .line 1476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1477
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1478
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1465
    :cond_20
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-lez v15, :cond_21

    .line 1466
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_c

    .line 1468
    :cond_21
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_c

    .line 1481
    .end local v3    # "alpha":F
    .end local v7    # "height":F
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_22
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_16

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v17, v0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v14

    .line 1484
    .local v14, "width":F
    :goto_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    div-float v15, v15, v17

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_24

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1486
    .restart local v3    # "alpha":F
    :goto_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_2d

    .line 1489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1490
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_25

    .line 1491
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_f

    .line 1482
    .end local v3    # "alpha":F
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .end local v14    # "width":F
    :cond_23
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_d

    .line 1484
    .restart local v14    # "width":F
    :cond_24
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    div-float v3, v15, v17

    goto :goto_e

    .line 1493
    .restart local v3    # "alpha":F
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_26

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_26

    .line 1494
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1498
    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v15, :cond_28

    .line 1499
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v15, v3}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1501
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_27

    .line 1502
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1503
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1504
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v17, -0x40800000    # -1.0f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1507
    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1510
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v15, :cond_2a

    .line 1511
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 1512
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1517
    :cond_29
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_2b

    .line 1518
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1529
    :cond_2a
    :goto_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move/from16 v17, v0

    add-float v15, v15, v17

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_16

    .line 1531
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1532
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1533
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1520
    :cond_2b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-lez v15, :cond_2c

    .line 1521
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_10

    .line 1523
    :cond_2c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_10

    .line 1535
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_2d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move/from16 v17, v0

    add-float v15, v15, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v17

    cmpg-float v15, v15, v17

    if-gez v15, :cond_16

    .line 1538
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1539
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2e

    .line 1540
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_11

    .line 1542
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_2f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_2f

    .line 1543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v14, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1547
    :cond_2f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_31

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v15, :cond_31

    .line 1548
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v15, v3}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1550
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_30

    .line 1551
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1553
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v17, -0x40800000    # -1.0f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1556
    :cond_30
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1560
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v15, :cond_33

    .line 1561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_32

    .line 1562
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1567
    :cond_32
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_34

    .line 1568
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1579
    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move/from16 v17, v0

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move/from16 v17, v0

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_16

    .line 1581
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1582
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1583
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1570
    :cond_34
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v17, v17, v18

    cmpl-float v15, v15, v17

    if-lez v15, :cond_35

    .line 1571
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_12

    .line 1573
    :cond_35
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v17, v17, v18

    add-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_12

    .line 1594
    .end local v3    # "alpha":F
    .end local v14    # "width":F
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_37

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_37

    .line 1595
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1598
    :cond_37
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_38

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_38

    .line 1599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1602
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_39

    .line 1603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1611
    :cond_38
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1606
    :cond_39
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_13

    .line 1614
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_3a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_3e

    .line 1615
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_3c

    .line 1616
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1629
    :cond_3b
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1617
    :cond_3c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move/from16 v17, v0

    add-float v15, v15, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v17

    cmpg-float v15, v15, v17

    if-gez v15, :cond_3b

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v17, v0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v7

    .line 1619
    .restart local v7    # "height":F
    :goto_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_14

    .line 1618
    .end local v7    # "height":F
    :cond_3d
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_15

    .line 1621
    :cond_3e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_3b

    .line 1622
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/16 v17, 0x0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_3f

    .line 1623
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_14

    .line 1624
    :cond_3f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move/from16 v17, v0

    add-float v15, v15, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v17

    cmpg-float v15, v15, v17

    if-gez v15, :cond_3b

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v17, v0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v14

    .line 1626
    .restart local v14    # "width":F
    :goto_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_14

    .line 1625
    .end local v14    # "width":F
    :cond_40
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_16

    .line 1649
    .restart local v4    # "checked":Z
    .restart local v5    # "clipRect":Landroid/graphics/Rect;
    .restart local v8    # "i":I
    .restart local v10    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    .restart local v11    # "matrix":[F
    .restart local v12    # "size":I
    .restart local v13    # "view":Lcom/samsung/android/glview/GLView;
    :cond_41
    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v10, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1650
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 1651
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 1666
    .end local v13    # "view":Lcom/samsung/android/glview/GLView;
    :cond_42
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v15, :cond_43

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v15, :cond_43

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v15, v11, v5}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1674
    :cond_43
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_44

    .line 1675
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v15, v11, v5}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1681
    :cond_44
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v15, :cond_45

    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1684
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v15, v11, v5}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1688
    :cond_45
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDrawFirstTime:Z

    .line 1689
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1690
    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 531
    if-ne p2, v0, :cond_0

    .line 532
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 533
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    .line 535
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 550
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 563
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    .line 566
    :cond_3
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 573
    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLAbsList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 581
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 582
    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 583
    .local v2, "et":Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v6, v8, v9}, Lcom/samsung/android/glview/GLAbsList;->mapPointReverse([FFF)V

    .line 584
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v2, v6, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 587
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 588
    const/4 v6, 0x0

    monitor-exit v7

    .line 785
    :goto_0
    return v6

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v4

    .line 593
    .local v4, "mBoundary":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 594
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 595
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 596
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    .line 597
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    .line 598
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 599
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 600
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 601
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 603
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 604
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_0

    .line 786
    .end local v2    # "et":Landroid/view/MotionEvent;
    .end local v4    # "mBoundary":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 607
    .restart local v2    # "et":Landroid/view/MotionEvent;
    .restart local v4    # "mBoundary":Z
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v6, :cond_4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    .line 608
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    .line 609
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 610
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 611
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 612
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 615
    :cond_2
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 616
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 617
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 618
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 619
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 623
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 624
    const/4 v6, 0x0

    monitor-exit v7

    goto/16 :goto_0

    .line 626
    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v6, :cond_1f

    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v6, :cond_1f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1f

    .line 627
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_f

    .line 628
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    sub-float v0, v6, v8

    .line 629
    .local v0, "delta":F
    move v1, v0

    .line 631
    .local v1, "deltaForContents":F
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_7

    .line 632
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    .line 633
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 634
    const/4 v4, 0x0

    .line 659
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 660
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 661
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    .line 662
    .local v5, "view":Lcom/samsung/android/glview/GLView;
    if-nez v4, :cond_b

    .line 663
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v1, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_2

    .line 637
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    const/4 v1, 0x0

    .line 638
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 640
    :cond_7
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_9

    .line 641
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_8

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_8

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 643
    const/4 v4, 0x0

    goto :goto_1

    .line 646
    :cond_8
    const/4 v1, 0x0

    .line 647
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 649
    :cond_9
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v0

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    .line 651
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    sub-float v1, v0, v6

    .line 652
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 653
    :cond_a
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v8

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v8

    sub-float v1, v0, v6

    .line 656
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 665
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .restart local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_b
    const/4 v6, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto/16 :goto_2

    .line 669
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_c
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_d

    .line 670
    if-nez v4, :cond_11

    .line 671
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v6, v8

    mul-float/2addr v6, v1

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 675
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v9, v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 678
    :cond_d
    if-nez v4, :cond_12

    .line 679
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 688
    :cond_e
    :goto_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 690
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_f
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1c

    .line 691
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    sub-float v0, v6, v8

    .line 692
    .restart local v0    # "delta":F
    move v1, v0

    .line 694
    .restart local v1    # "deltaForContents":F
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_14

    .line 695
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_13

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_13

    .line 696
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 697
    const/4 v4, 0x0

    .line 723
    :cond_10
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 724
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 725
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    .line 726
    .restart local v5    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v4, :cond_18

    .line 727
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_6

    .line 673
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_11
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v6, v8

    mul-float/2addr v6, v1

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_3

    .line 681
    :cond_12
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v6, :cond_e

    .line 682
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 683
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_e

    .line 684
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v0

    add-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_4

    .line 700
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_13
    const/4 v1, 0x0

    .line 701
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_5

    .line 703
    :cond_14
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_16

    .line 704
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_15

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_15

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 706
    const/4 v4, 0x0

    goto :goto_5

    .line 709
    :cond_15
    const/4 v1, 0x0

    .line 710
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_5

    .line 712
    :cond_16
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v0

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_17

    .line 714
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    sub-float v1, v0, v6

    .line 715
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_5

    .line 716
    :cond_17
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v8

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_10

    .line 718
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v8

    sub-float v1, v0, v6

    .line 719
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_5

    .line 729
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .restart local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_18
    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto/16 :goto_6

    .line 733
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_19
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_1a

    .line 734
    if-nez v4, :cond_1d

    .line 735
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v6, v8

    mul-float/2addr v6, v1

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 739
    :goto_7
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 742
    :cond_1a
    if-nez v4, :cond_1e

    .line 743
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 752
    :cond_1b
    :goto_8
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 754
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 755
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 756
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 737
    .restart local v0    # "delta":F
    .restart local v1    # "deltaForContents":F
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1d
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v6, v8

    mul-float/2addr v6, v1

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_7

    .line 745
    :cond_1e
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v6, :cond_1b

    .line 746
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 747
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1b

    .line 748
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v0

    add-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_8

    .line 759
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1f
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_20

    .line 760
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 763
    :cond_20
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v6, :cond_24

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_21

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_24

    .line 764
    :cond_21
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 765
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 766
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 767
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 768
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 770
    if-nez v4, :cond_23

    iget-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    if-nez v6, :cond_23

    .line 771
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_22

    .line 772
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    neg-float v6, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 774
    :cond_22
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    const/4 v8, 0x2

    if-ne v6, v8, :cond_23

    .line 775
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    neg-float v6, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 779
    :cond_23
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 780
    const-string v6, "GLAbsList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "estimated fps = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 782
    const/4 v6, 0x0

    monitor-exit v7

    goto/16 :goto_0

    .line 784
    :cond_24
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 785
    const/4 v6, 0x0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public refreshList()V
    .locals 2

    .prologue
    .line 790
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 793
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 796
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    .line 799
    monitor-exit v1

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 807
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 808
    return-void
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1696
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1697
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1698
    return-void
.end method

.method public scrollList(FF)Z
    .locals 9
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 816
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v2

    .line 817
    .local v2, "mBoundary":Z
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_8

    .line 818
    move v0, p2

    .line 819
    .local v0, "deltaForContents":F
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 820
    cmpg-float v6, p2, v8

    if-gez v6, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 821
    iput v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 822
    const/4 v2, 0x0

    .line 844
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 845
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 846
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 847
    .local v3, "view":Lcom/samsung/android/glview/GLView;
    if-nez v2, :cond_1

    .line 848
    invoke-virtual {v3, v8, v0, v5}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_1

    .line 825
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 827
    :cond_3
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 828
    cmpl-float v6, p2, v8

    if-lez v6, :cond_4

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, p2, v6

    if-lez v6, :cond_4

    .line 829
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 830
    const/4 v2, 0x0

    goto :goto_0

    .line 833
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 835
    :cond_5
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, p2

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    .line 837
    const/4 v2, 0x1

    goto :goto_0

    .line 838
    :cond_6
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v7

    add-float/2addr v6, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 840
    const/4 v2, 0x1

    goto :goto_0

    .line 852
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_7
    if-nez v2, :cond_8

    .line 853
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, p2

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 856
    .end local v0    # "deltaForContents":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_8
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    .line 857
    move v0, p1

    .line 859
    .restart local v0    # "deltaForContents":F
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    .line 860
    cmpg-float v6, p1, v8

    if-gez v6, :cond_b

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 861
    iput v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 862
    const/4 v2, 0x0

    .line 884
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 885
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 886
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    .line 887
    .restart local v3    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v2, :cond_a

    .line 888
    invoke-virtual {v3, v0, v8, v5}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_3

    .line 865
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    .end local v3    # "view":Lcom/samsung/android/glview/GLView;
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 867
    :cond_c
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e

    .line 868
    cmpl-float v6, p1, v8

    if-lez v6, :cond_d

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_d

    .line 869
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 870
    const/4 v2, 0x0

    goto :goto_2

    .line 873
    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    .line 875
    :cond_e
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, p1

    cmpl-float v6, v6, v8

    if-lez v6, :cond_f

    .line 877
    const/4 v2, 0x1

    goto :goto_2

    .line 878
    :cond_f
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v7

    add-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 880
    const/4 v2, 0x1

    goto :goto_2

    .line 891
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_10
    if-nez v2, :cond_11

    .line 892
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, p1

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 896
    .end local v0    # "deltaForContents":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_11
    if-nez v2, :cond_12

    :goto_4
    return v4

    :cond_12
    move v4, v5

    goto :goto_4
.end method

.method public scrollToVisible(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 978
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    .line 979
    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 900
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    if-nez v7, :cond_0

    move v7, v8

    .line 973
    :goto_0
    return v7

    .line 904
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 905
    .local v1, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v3

    .line 908
    .local v3, "listCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 909
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 910
    const-string v7, "GLAbsList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", visibility = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 911
    goto :goto_0

    .line 913
    :cond_1
    const/4 v5, 0x0

    .line 914
    .local v5, "offsetY":F
    const/4 v4, 0x0

    .line 916
    .local v4, "offsetX":F
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v7, v9, :cond_8

    .line 918
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_3

    .line 919
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 925
    :cond_2
    :goto_1
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v7, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 927
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v9

    .line 928
    goto :goto_0

    .line 920
    :cond_3
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    .line 921
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v7

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    .line 922
    .local v0, "height":F
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_1

    .line 921
    .end local v0    # "height":F
    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_2

    .line 929
    :cond_5
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_7

    .line 930
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v7, v10

    .line 931
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 958
    :cond_6
    :goto_3
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 959
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 962
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 963
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 964
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/glview/GLView;

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    invoke-virtual {v7, v10, v11, v8}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_4

    .line 932
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_7
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    .line 933
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v7, v10

    .line 934
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_3

    .line 936
    :cond_8
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    .line 938
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_a

    .line 939
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 945
    :cond_9
    :goto_5
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 947
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v9

    .line 948
    goto/16 :goto_0

    .line 940
    :cond_a
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_9

    .line 941
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v7

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v6

    .line 942
    .local v6, "width":F
    :goto_6
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_5

    .line 941
    .end local v6    # "width":F
    :cond_b
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_6

    .line 949
    :cond_c
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d

    .line 950
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v10

    .line 951
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    .line 952
    :cond_d
    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    .line 953
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v10

    .line 954
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    .line 967
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :cond_e
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v7, :cond_f

    .line 968
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v12, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v7, v10, v11, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 970
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 971
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 972
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v7, v9

    .line 973
    goto/16 :goto_0
.end method

.method public sendAccessibilityEvent()V
    .locals 0

    .prologue
    .line 987
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;

    .prologue
    .line 995
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 996
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 8
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v6, :cond_3

    .line 1007
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v4

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_portrait_top:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    .line 1008
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v4

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_portrait_bottom:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    .line 1013
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1019
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1022
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 1025
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 1028
    :cond_2
    return-void

    .line 1010
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_landscape_left:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    .line 1011
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_landscape_right:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 1032
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 1034
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setHeight(F)V

    .line 1035
    return-void
.end method

.method public setOverScrollEffect(Z)V
    .locals 0
    .param p1, "effect"    # Z

    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    .line 1044
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1051
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    .line 1052
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    .line 1053
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v4

    .line 1054
    .local v4, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v5

    .line 1055
    .local v5, "top":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v0

    .line 1057
    .local v0, "bottom":F
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1058
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1059
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLView;

    .line 1060
    .local v6, "view":Lcom/samsung/android/glview/GLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1062
    .local v1, "childPaddings":Landroid/graphics/Rect;
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1063
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    .line 1064
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1068
    :goto_1
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    .line 1069
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v8

    sub-float v8, v4, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1073
    :goto_2
    iget-object v7, v6, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1074
    iget-object v7, v6, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1076
    :cond_0
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 1077
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    .line 1078
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1082
    :goto_3
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 1083
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1087
    :goto_4
    iget-object v7, v6, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1088
    iget-object v7, v6, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1090
    :cond_1
    invoke-virtual {v6, v1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1066
    :cond_2
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 1071
    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1080
    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1085
    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 1092
    .end local v1    # "childPaddings":Landroid/graphics/Rect;
    .end local v6    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    .line 1093
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v7, :cond_7

    .line 1094
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 1096
    :cond_7
    return-void
.end method

.method public setScrollBarAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1104
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    .line 1105
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "showScrollbar"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    .line 395
    return-void
.end method

.method protected setScrollBarLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1704
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v4, :cond_5

    .line 1708
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1712
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1720
    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 1721
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1734
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1735
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    goto :goto_0

    .line 1714
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_4

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1717
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1722
    :cond_5
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1723
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_6

    .line 1727
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1731
    :goto_3
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 1732
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 1729
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method public setScrollBarPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 1113
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    .line 1114
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .param p1, "ninepatchId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1122
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTag(I)V

    .line 1124
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1125
    return-void
.end method

.method public setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    .line 1134
    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    .line 429
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1, "scrollThresholdDIP"    # F

    .prologue
    .line 446
    const-string v0, "GLAbsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    .line 449
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 1143
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    .line 1144
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    if-eqz v0, :cond_0

    .line 1145
    if-eqz p1, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollStart()V

    .line 1151
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->resetDrag()V

    .line 1153
    :cond_1
    return-void

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1160
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 1161
    iput p2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 1163
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1164
    return-void
.end method

.method protected setVisibleArea()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1742
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    .line 1743
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    .line 1745
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1748
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1751
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1755
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 1168
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 1170
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    .line 1171
    return-void
.end method

.method public showScrollBar()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 1182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1184
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_0
.end method
