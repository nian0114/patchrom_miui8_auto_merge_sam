.class public Lcom/sec/android/app/camera/widget/gl/Trapezoid;
.super Lcom/samsung/android/glview/GLView;
.source "Trapezoid.java"


# static fields
.field private static final DEFAULT_THICKNESS:I

.field private static final DRAW_LINE_OFFSET:I

.field private static final SCREEN_WIDTH:I

.field private static final TRAPEZIOD_LINE_COLOR:I

.field private static final TRAPEZIOD_LINE_WARNING_COLOR:I


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mTrapeziodBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0c0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZIOD_LINE_COLOR:I

    .line 34
    const v0, 0x7f0c0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZIOD_LINE_WARNING_COLOR:I

    .line 35
    const v0, 0x7f090275

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->DEFAULT_THICKNESS:I

    .line 36
    const v0, 0x7f090274

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->DRAW_LINE_OFFSET:I

    .line 37
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->SCREEN_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 4
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, v3, v3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 47
    sget v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->SCREEN_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setSize(FF)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZIOD_LINE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->DEFAULT_THICKNESS:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    sget v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziodBitmap:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziodBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mCanvas:Landroid/graphics/Canvas;

    .line 58
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziodBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v3, v3, v1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLBitmapTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public changeColor(Z)V
    .locals 2
    .param p1, "isWarning"    # Z

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZIOD_LINE_WARNING_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->TRAPEZIOD_LINE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 78
    return-void
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->draw([FLandroid/graphics/Rect;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->onLayoutUpdated()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    .line 125
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLBitmapTexture;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 128
    :cond_0
    return v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->reset()V

    .line 135
    :cond_0
    return-void
.end method

.method public declared-synchronized setRect(FF[F)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "points"    # [F

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziodBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x3

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget v1, p3, v1

    const/4 v2, 0x5

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x6

    aget v1, p3, v1

    const/4 v2, 0x7

    aget v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->DRAW_LINE_OFFSET:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziodBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->mTrapeziod:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 104
    :cond_0
    return-void
.end method
