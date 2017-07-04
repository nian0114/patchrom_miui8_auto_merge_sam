.class public Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
.super Lcom/samsung/android/glview/GLView;
.source "TouchEVSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;
    }
.end annotation


# static fields
.field private static final EV_SLIDER_BAR_ALPHA_VALUE:F = 0.45f

.field private static final EV_SLIDER_BAR_ANIMATION_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "TouchEVSlider"


# instance fields
.field private mAlphaDivideFactor:F

.field private mBasePositionStep:I

.field private mCurrentStep:I

.field private mGaugeMarkerPos:Landroid/graphics/PointF;

.field private mHeight:F

.field private mImage1:Lcom/samsung/android/glview/GLImage;

.field private mImage2:Lcom/samsung/android/glview/GLImage;

.field private mImage3:Lcom/samsung/android/glview/GLImage;

.field private mLastTouchPosY:F

.field private mMarkerHeight:F

.field private mMarkerOffset:F

.field private mMarkerWidth:F

.field private mNumOfStep:I

.field private mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

.field private mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

.field protected mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

.field private mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEVShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "markerOffset"    # F
    .param p7, "markerWidth"    # F
    .param p8, "markerHeight"    # F
    .param p9, "backgroundResId"    # I
    .param p10, "numOfStep"    # I

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 57
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    .line 65
    if-lez p10, :cond_0

    .line 66
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    .line 69
    :cond_0
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    .line 70
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    .line 71
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    .line 72
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    .line 74
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v1, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 76
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v1, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 79
    add-int/lit8 v1, p10, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    .line 80
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "numOfStep"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    int-to-float v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .line 48
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    .line 49
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    .line 51
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    .line 52
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    .line 53
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    .line 54
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    .line 56
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    .line 86
    add-int/lit8 v0, p4, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    .line 88
    return-void
.end method

.method private setStepIndicatorPosition()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    .line 112
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected findNearestStepId(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "interval":F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v3

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    sub-float v2, v3, v5

    .line 346
    .local v2, "slideBarHeight":F
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    .line 361
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 352
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    move v0, v4

    .line 357
    goto :goto_1

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_4

    .line 359
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 361
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCurrentEVStep()I
    .locals 3

    .prologue
    .line 116
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    sub-int v0, v1, v2

    .line 117
    .local v0, "step":I
    return v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    .line 137
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initEVSlider()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setStepIndicatorPosition()V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 146
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f02000e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 153
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f02000f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 160
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f020010

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 167
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    return-void
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 195
    :cond_4
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 381
    :cond_4
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 402
    :cond_4
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x1

    .line 408
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 420
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 423
    :cond_4
    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    .line 437
    :cond_2
    return-void
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 214
    :cond_4
    return-void
.end method

.method public onStartMove(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    sub-float v3, p2, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getLeft()F

    move-result v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->findNearestStepId(FF)I

    move-result v0

    .line 228
    .local v0, "tempStep":I
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;->onStepChanged(I)V

    .line 229
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 231
    .end local v0    # "tempStep":I
    :cond_1
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 232
    return-void

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public resetEVSliderAlpha()V
    .locals 2

    .prologue
    const v1, 0x3ee66666    # 0.45f

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 241
    :cond_0
    return-void
.end method

.method public setCurrentEVStep(I)Z
    .locals 6
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    .line 244
    const-string v1, "TouchEVSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentEVStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_1

    .line 247
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 248
    .local v0, "newStep":I
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_0

    move v1, v2

    .line 255
    .end local v0    # "newStep":I
    :goto_0
    return v1

    .line 251
    .restart local v0    # "newStep":I
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 252
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    move v1, v2

    .line 253
    goto :goto_0

    .line 255
    .end local v0    # "newStep":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLastTouchPosition(F)V
    .locals 0
    .param p1, "posY"    # F

    .prologue
    .line 260
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 261
    return-void
.end method

.method public setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V
    .locals 0
    .param p1, "onSliderChangeListener"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .line 265
    return-void
.end method

.method public startEVSliderAnimation()V
    .locals 3

    .prologue
    const v2, 0x3ee66666    # 0.45f

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 278
    :cond_1
    return-void
.end method

.method public declared-synchronized updateEVSliderVI()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 282
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    sub-int v1, v5, v6

    .line 283
    .local v1, "delta":I
    int-to-float v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    mul-float v0, v5, v6

    .line 284
    .local v0, "alphaOffset":F
    if-nez v1, :cond_6

    .line 285
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 288
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 307
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_2

    .line 308
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    .line 310
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_3

    .line 311
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    .line 313
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_4

    .line 314
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    .line 317
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_5

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "height":F
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v9

    if-nez v5, :cond_a

    .line 320
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float v2, v5, v6

    .line 325
    :goto_1
    cmpg-float v5, v2, v9

    if-gez v5, :cond_b

    .line 326
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 331
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v6, v10

    add-float v3, v5, v6

    .line 332
    .local v3, "posY":F
    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    sub-float v4, v5, v3

    .line 333
    .local v4, "rightHeight":F
    cmpg-float v5, v4, v9

    if-gez v5, :cond_c

    .line 334
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 339
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v2    # "height":F
    .end local v3    # "posY":F
    .end local v4    # "rightHeight":F
    :cond_5
    monitor-exit p0

    return-void

    .line 291
    :cond_6
    if-gez v1, :cond_8

    .line 292
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_7

    .line 293
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    add-float v6, v8, v0

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 295
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_1

    .line 296
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    add-float v6, v7, v0

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 282
    .end local v0    # "alphaOffset":F
    .end local v1    # "delta":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 298
    .restart local v0    # "alphaOffset":F
    .restart local v1    # "delta":I
    :cond_8
    if-lez v1, :cond_1

    .line 299
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_9

    .line 300
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 302
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v5, :cond_1

    .line 303
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    add-float v6, v7, v0

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    goto/16 :goto_0

    .line 322
    .restart local v2    # "height":F
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v6, v10

    sub-float v2, v5, v6

    goto :goto_1

    .line 328
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setHeight(F)V

    .line 329
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_2

    .line 336
    .restart local v3    # "posY":F
    .restart local v4    # "rightHeight":F
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5, v4}, Lcom/samsung/android/glview/GLNinePatch;->setHeight(F)V

    .line 337
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
