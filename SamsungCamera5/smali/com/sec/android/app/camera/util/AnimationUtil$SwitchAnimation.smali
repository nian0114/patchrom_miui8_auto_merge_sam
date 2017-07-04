.class Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;
.super Landroid/view/animation/Animation;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/AnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchAnimation"
.end annotation


# instance fields
.field mDepth:F

.field mDirection:I

.field mFromX:I

.field mMaxOffsetY:F

.field mPivotX:F

.field mPivotY:F

.field mToX:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 602
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 603
    .local v0, "cam":Landroid/graphics/Camera;
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDepth:F

    invoke-virtual {v0, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "translate":F
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 606
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    mul-float v4, p1, v6

    mul-float v2, v3, v4

    .line 610
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 611
    neg-float v3, v2

    invoke-virtual {v0, v5, v3, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 615
    :cond_0
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToX:I

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 617
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 618
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 620
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 621
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 622
    return-void

    .line 608
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v4, v6

    mul-float v2, v3, v4

    goto :goto_0

    .line 612
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    .line 613
    invoke-virtual {v0, v5, v2, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 577
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 578
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    .line 579
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    .line 580
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 581
    return-void
.end method

.method public setDepth(F)V
    .locals 0
    .param p1, "depth"    # F

    .prologue
    .line 584
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDepth:F

    .line 585
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 588
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    .line 589
    return-void
.end method

.method public setMaxOffsetY(F)V
    .locals 0
    .param p1, "offsetY"    # F

    .prologue
    .line 592
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    .line 593
    return-void
.end method

.method public setRotation(II)V
    .locals 0
    .param p1, "fromX"    # I
    .param p2, "toX"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromX:I

    .line 597
    iput p2, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToX:I

    .line 598
    return-void
.end method
