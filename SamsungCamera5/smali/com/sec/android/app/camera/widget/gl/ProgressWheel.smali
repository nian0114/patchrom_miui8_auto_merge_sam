.class public Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
.super Lcom/samsung/android/glview/GLView;
.source "ProgressWheel.java"


# static fields
.field private static final ARC_END_COLOR:I

.field private static final ARC_START_COLOR:I

.field public static final DEFAULT_PROGRESSWHEEL:I = 0x0

.field private static final RIM_COLOR:I

.field private static final RIM_THICKNESS:F

.field private static final SHUTTER_BGCOLOR:I

.field private static final SHUTTER_COLOR:I

.field public static final SHUTTER_PROGRESSWHEEL:I = 0x1

.field private static final SHUTTER_THICKNESS:F

.field private static final TIMER_BGCOLOR:I

.field private static final TIMER_COLOR:I

.field public static final TIMER_PROGRESSWHEEL:I = 0x2


# instance fields
.field private mArcPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mRimPaint:Landroid/graphics/Paint;

.field private mRimRect:Landroid/graphics/RectF;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0c0033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    .line 41
    const v0, 0x7f09016c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    .line 42
    const v0, 0x7f0c0030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    .line 43
    const v0, 0x7f0c002d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    .line 44
    const v0, 0x7f0c002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_COLOR:I

    .line 45
    const v0, 0x7f0c002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_BGCOLOR:I

    .line 46
    const v0, 0x7f09016d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    .line 47
    const v0, 0x7f0c0032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_COLOR:I

    .line 48
    const v0, 0x7f0c0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_BGCOLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 50
    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    .line 59
    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 71
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v1, v8

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v3, v8

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v5, v8

    sub-float v5, p4, v5

    sget v7, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v7, v8

    sub-float v7, p5, v7

    invoke-virtual {v0, v1, v3, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 74
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v9, v9, v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLBitmapTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "type"    # I

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    .line 81
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    .line 83
    float-to-int v0, p4

    float-to-int v1, p5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 85
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p4, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, p5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 130
    :goto_0
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLBitmapTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 132
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_BGCOLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->TIMER_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_BGCOLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    sget v1, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p4, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, p5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLoaded()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->getLoaded()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 144
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 146
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getWidth()F

    move-result v1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getHeight()F

    move-result v0

    .line 154
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setSize(FF)V

    .line 155
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->draw([FLandroid/graphics/Rect;)V

    .line 205
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->load()Z

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->reset()V

    .line 220
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 13
    .param p1, "progress"    # I

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v12, 0x40000000    # 2.0f

    .line 158
    monitor-enter p0

    .line 159
    int-to-float v0, p1

    div-float v10, v0, v2

    .line 160
    .local v10, "percentage":F
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 161
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 162
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 165
    new-instance v1, Landroid/graphics/RectF;

    sget v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v0, v12

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 166
    .local v1, "arcRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mProgressWheel:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/glview/GLBitmapTexture;->updateTexture(Landroid/graphics/Bitmap;Z)Z

    .line 197
    monitor-exit p0

    .line 198
    return-void

    .line 169
    .end local v1    # "arcRect":Landroid/graphics/RectF;
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 170
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 173
    new-instance v1, Landroid/graphics/RectF;

    sget v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v0, v12

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->SHUTTER_THICKNESS:F

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 174
    .restart local v1    # "arcRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 197
    .end local v1    # "arcRect":Landroid/graphics/RectF;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 178
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    sget v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 179
    .local v9, "colorRed":I
    sget v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 180
    .local v8, "colorGreen":I
    sget v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_END_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 181
    .local v7, "colorBlue":I
    const/16 v0, 0x168

    if-ge p1, v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-static {v9, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 191
    new-instance v1, Landroid/graphics/RectF;

    sget v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v0, v12

    sget v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->RIM_THICKNESS:F

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .restart local v1    # "arcRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 185
    .end local v1    # "arcRect":Landroid/graphics/RectF;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->mRimRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    sget v11, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->ARC_START_COLOR:I

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
