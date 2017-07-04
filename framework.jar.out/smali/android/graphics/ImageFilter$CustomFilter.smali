.class public Landroid/graphics/ImageFilter$CustomFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vcode"    # Ljava/lang/String;
    .param p2, "fcode"    # Ljava/lang/String;

    .prologue
    .line 460
    const/16 v0, 0xee

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 461
    invoke-virtual {p0, p1}, Landroid/graphics/ImageFilter$CustomFilter;->setVertexShader(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p2}, Landroid/graphics/ImageFilter$CustomFilter;->setFragmentShader(Ljava/lang/String;)V

    .line 463
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 679
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/ImageFilter;->setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 680
    return-void
.end method

.method public setUniform1f(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F

    .prologue
    const/4 v2, 0x1

    .line 488
    new-array v0, v2, [F

    .line 489
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 490
    invoke-super {p0, p1, v2, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 491
    return-void
.end method

.method public setUniform1i(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I

    .prologue
    const/4 v2, 0x1

    .line 582
    new-array v0, v2, [I

    .line 583
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 584
    invoke-super {p0, p1, v2, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 585
    return-void
.end method

.method public setUniform2f(Ljava/lang/String;FF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 503
    new-array v0, v3, [F

    .line 504
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 505
    aput p3, v0, v2

    .line 506
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 507
    return-void
.end method

.method public setUniform2i(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 597
    new-array v0, v3, [I

    .line 598
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 599
    aput p3, v0, v2

    .line 600
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 601
    return-void
.end method

.method public setUniform3f(Ljava/lang/String;FFF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F
    .param p4, "value2"    # F

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 520
    new-array v0, v3, [F

    .line 521
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 522
    aput p3, v0, v2

    .line 523
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 524
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 525
    return-void
.end method

.method public setUniform3i(Ljava/lang/String;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I
    .param p4, "value2"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 614
    new-array v0, v3, [I

    .line 615
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 616
    aput p3, v0, v2

    .line 617
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 618
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 619
    return-void
.end method

.method public setUniform4f(Ljava/lang/String;FFFF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F
    .param p4, "value2"    # F
    .param p5, "value3"    # F

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 539
    new-array v0, v3, [F

    .line 540
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 541
    aput p3, v0, v2

    .line 542
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 543
    const/4 v1, 0x3

    aput p5, v0, v1

    .line 544
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 545
    return-void
.end method

.method public setUniform4i(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I
    .param p4, "value2"    # I
    .param p5, "value3"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 633
    new-array v0, v3, [I

    .line 634
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 635
    aput p3, v0, v2

    .line 636
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 637
    const/4 v1, 0x3

    aput p5, v0, v1

    .line 638
    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 639
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "value"    # [F

    .prologue
    .line 666
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    .line 667
    return-void
.end method

.method public setUniformfv(Ljava/lang/String;II[F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [F

    .prologue
    .line 570
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 571
    return-void
.end method

.method public setUniformiv(Ljava/lang/String;II[I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [I

    .prologue
    .line 652
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 653
    return-void
.end method

.method public setUpdateMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 476
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUpdateMargin(IIII)V

    .line 477
    return-void
.end method

.method public setValue(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 556
    invoke-super {p0, p1, p2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 557
    return-void
.end method
