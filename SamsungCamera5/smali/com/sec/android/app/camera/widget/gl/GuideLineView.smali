.class public Lcom/sec/android/app/camera/widget/gl/GuideLineView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "GuideLineView.java"


# static fields
.field private static final GUIDELINE_BOTTOM_INTERVAL:I

.field private static final GUIDELINE_WIDTH:I

.field private static final NUM_OF_GUIDELINES:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "GuideLine"


# instance fields
.field private mHeight:I

.field private mLine_x1:Lcom/samsung/android/glview/GLRectangle;

.field private mLine_x2:Lcom/samsung/android/glview/GLRectangle;

.field private mLine_y1:Lcom/samsung/android/glview/GLRectangle;

.field private mLine_y2:Lcom/samsung/android/glview/GLRectangle;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0a002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    .line 35
    const v0, 0x7f0a002d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;I)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "parent_width"    # I
    .param p3, "parent_height"    # I
    .param p4, "previewRect"    # Landroid/graphics/Rect;
    .param p5, "guideLine"    # I

    .prologue
    const v9, 0x7f0c0011

    const v8, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 47
    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 48
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    .line 49
    iput p3, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    .line 51
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    int-to-float v5, v1

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v1

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    .line 52
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    int-to-float v5, v1

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v1

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    .line 54
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v5, v1

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v1

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    .line 55
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v5, v1

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v1, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v1

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 68
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setGuideLineSize(Landroid/graphics/Rect;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 73
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public setGuideLineSize(Landroid/graphics/Rect;I)V
    .locals 12
    .param p1, "previewRect"    # Landroid/graphics/Rect;
    .param p2, "guideline"    # I

    .prologue
    const v7, 0x7f0901bf

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "guideline_x":I
    const/4 v1, 0x0

    .line 85
    .local v1, "guideline_y":I
    const/4 v2, 0x0

    .line 86
    .local v2, "origin_x":I
    const/4 v3, 0x0

    .line 88
    .local v3, "origin_y":I
    if-eqz p1, :cond_1

    .line 89
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 90
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 91
    if-gez v2, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    .line 97
    const-string v4, "GuideLine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setGuideLineSize mWidth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    if-le v4, v5, :cond_1

    .line 100
    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    .line 104
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 143
    :cond_2
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    div-int/lit8 v1, v4, 0x3

    .line 107
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    div-int/lit8 v0, v4, 0x3

    .line 109
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    add-int v5, v2, v0

    int-to-float v5, v5

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    sget v9, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 112
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_4

    .line 113
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    sget v9, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 115
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_5

    .line 116
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    add-int v6, v3, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    sget v8, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 117
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v10, v10}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    sget v8, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 122
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v10}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 128
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_6

    .line 129
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x1:Lcom/samsung/android/glview/GLRectangle;

    add-int v5, v2, v0

    int-to-float v5, v5

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    sget v9, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 131
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_7

    .line 132
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_x2:Lcom/samsung/android/glview/GLRectangle;

    add-int v5, v2, v0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mHeight:I

    sget v9, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 134
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_8

    .line 135
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y1:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v11, v10}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 137
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->mLine_y2:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v11}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
