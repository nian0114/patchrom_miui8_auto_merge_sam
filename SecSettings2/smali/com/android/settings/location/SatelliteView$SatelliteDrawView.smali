.class public Lcom/android/settings/location/SatelliteView$SatelliteDrawView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteDrawView"
.end annotation


# instance fields
.field private circleColor:I

.field private numberColor:I

.field private rectColor:I

.field sx:I

.field sy:I

.field final synthetic this$0:Lcom/android/settings/location/SatelliteView;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/SatelliteView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    .line 475
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 470
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    # getter for: Lcom/android/settings/location/SatelliteView;->ICON_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1000()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->sx:I

    .line 471
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    # getter for: Lcom/android/settings/location/SatelliteView;->ICON_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1000()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->sy:I

    .line 476
    invoke-direct {p0}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->adajustColorForTheme()V

    .line 477
    return-void
.end method

.method private adajustColorForTheme()V
    .locals 4

    .prologue
    const/high16 v3, -0x10000

    const/16 v2, 0xff

    const/16 v1, 0x7f

    .line 503
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/location/SatelliteView;->access$1300(Lcom/android/settings/location/SatelliteView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {v2, v1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    .line 505
    iput v3, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    .line 506
    invoke-static {v2, v1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    .line 512
    :goto_0
    return-void

    .line 508
    :cond_0
    const v0, -0xffff01

    iput v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    .line 509
    iput v3, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    .line 510
    const v0, -0xff0001

    iput v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 515
    const-string v0, "GPS_SATELLITE_VIEW"

    const-string v1, "in satellite draw view onDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # invokes: Lcom/android/settings/location/SatelliteView;->calcRectDimension()V
    invoke-static {v0}, Lcom/android/settings/location/SatelliteView;->access$1400(Lcom/android/settings/location/SatelliteView;)V

    .line 519
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 521
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 526
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 527
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-float v0, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 528
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-float v0, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x3ffc000000000000L    # 1.75

    mul-double/2addr v2, v6

    const-wide v6, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 529
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-float v0, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v6

    const-wide v6, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 530
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 531
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-float v1, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    int-to-double v2, v0

    const-wide v6, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v2, v6

    const-wide v6, 0x4013666666666666L    # 4.85

    div-double/2addr v2, v6

    double-to-float v2, v2

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-float v3, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x401e666666666666L    # 7.6

    mul-double/2addr v6, v8

    const-wide v8, 0x4013666666666666L    # 4.85

    div-double/2addr v6, v8

    double-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 532
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v0, v2

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v0, v2

    double-to-float v1, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    int-to-float v2, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x4017666666666666L    # 5.85

    mul-double/2addr v6, v8

    const-wide v8, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v6, v8

    double-to-float v3, v6

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 534
    const/4 v13, 0x0

    .line 535
    .local v13, "j":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget v0, Lcom/android/settings/location/SatelliteView;->mNoOfSat:I

    if-ge v12, v0, :cond_3

    .line 537
    # getter for: Lcom/android/settings/location/SatelliteView;->snr:[F
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v12

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 539
    # getter for: Lcom/android/settings/location/SatelliteView;->px:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v12

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    # getter for: Lcom/android/settings/location/SatelliteView;->py:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v12

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 541
    # getter for: Lcom/android/settings/location/SatelliteView;->px:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    aput v1, v0, v12

    .line 542
    # getter for: Lcom/android/settings/location/SatelliteView;->py:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    aput v1, v0, v12

    .line 544
    :cond_0
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 546
    # getter for: Lcom/android/settings/location/SatelliteView;->px:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v12

    int-to-float v0, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->py:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v1

    aget v1, v1, v12

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 548
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 551
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 552
    const/16 v0, 0x9

    if-gt v12, v0, :cond_2

    .line 554
    add-int/lit8 v0, v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/settings/location/SatelliteView;->px:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v12

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->py:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v12

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 561
    :goto_1
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_gap:I
    invoke-static {v0}, Lcom/android/settings/location/SatelliteView;->access$1900(Lcom/android/settings/location/SatelliteView;)I

    move-result v0

    add-int/lit8 v1, v13, 0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_width:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$2000(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    mul-int/2addr v1, v13

    add-int/2addr v0, v1

    int-to-float v7, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    add-int/2addr v0, v1

    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mScrHeight:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$2100(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    add-int/2addr v0, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->snr:[F
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1500()[F

    move-result-object v1

    aget v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_gap:I
    invoke-static {v0}, Lcom/android/settings/location/SatelliteView;->access$1900(Lcom/android/settings/location/SatelliteView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_width:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$2000(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v13, 0x1

    mul-int/2addr v0, v1

    int-to-float v9, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    add-int/2addr v0, v1

    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mScrHeight:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$2100(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-double v10, v1

    mul-double/2addr v2, v10

    double-to-int v1, v2

    add-int/2addr v0, v1

    int-to-float v10, v0

    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v11

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 568
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 570
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_text_size:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$2200(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 571
    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 572
    add-int/lit8 v0, v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_gap:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$1900(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    add-int/lit8 v2, v13, 0x1

    mul-int/2addr v1, v2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mRect_width:I
    invoke-static {v1}, Lcom/android/settings/location/SatelliteView;->access$2000(Lcom/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-double v6, v1

    int-to-double v8, v13

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-int v1, v2

    int-to-float v1, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v2

    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v3

    add-int/2addr v2, v3

    const-wide v6, 0x3fc3333333333333L    # 0.15

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mScrHeight:I
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$2100(Lcom/android/settings/location/SatelliteView;)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 574
    add-int/lit8 v13, v13, 0x1

    .line 535
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 558
    :cond_2
    add-int/lit8 v0, v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/settings/location/SatelliteView;->px:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v12

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    # getter for: Lcom/android/settings/location/SatelliteView;->py:[I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v12

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    # getter for: Lcom/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 577
    :cond_3
    return-void
.end method

.method public setPoint(DD)V
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 480
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 481
    .local v0, "lengthPoint":F
    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 482
    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, p1

    float-to-double v4, v0

    div-double p1, v2, v4

    .line 483
    # getter for: Lcom/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, p3

    float-to-double v4, v0

    div-double p3, v2, v4

    .line 485
    :cond_0
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_X:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    # getter for: Lcom/android/settings/location/SatelliteView;->ICON_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1000()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    add-double/2addr v2, p1

    double-to-int v1, v2

    iput v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->sx:I

    .line 486
    # getter for: Lcom/android/settings/location/SatelliteView;->mCenter_Y:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    # getter for: Lcom/android/settings/location/SatelliteView;->ICON_RADIUS:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$1000()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    add-double/2addr v2, p3

    double-to-int v1, v2

    iput v1, p0, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->sy:I

    .line 487
    return-void
.end method
