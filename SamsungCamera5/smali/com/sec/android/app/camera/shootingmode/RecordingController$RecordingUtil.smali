.class public Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;
.super Ljava/lang/Object;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RecordingUtil"
.end annotation


# static fields
.field private static DEFAULT_PADDING:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 595
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->DEFAULT_PADDING:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    return-void
.end method

.method protected static convertToHMSFormat(I)Ljava/lang/String;
    .locals 7
    .param p0, "seconds"    # I

    .prologue
    .line 645
    div-int/lit16 v0, p0, 0xe10

    .line 646
    .local v0, "hour":I
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    .line 647
    .local v1, "min":I
    rem-int/lit8 v2, p0, 0x3c

    .line 648
    .local v2, "sec":I
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static convertToMSFormat(I)Ljava/lang/String;
    .locals 6
    .param p0, "seconds"    # I

    .prologue
    .line 658
    div-int/lit8 v2, p0, 0x3c

    rem-int/lit8 v0, v2, 0x3c

    .line 659
    .local v0, "min":I
    rem-int/lit8 v1, p0, 0x3c

    .line 660
    .local v1, "sec":I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static getHMSFormatStringWidth(F)F
    .locals 2
    .param p0, "textSize"    # F

    .prologue
    .line 625
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMaxNumericStringWidth(F)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    const-string v1, "::"

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected static getMSFormatStringWidth(F)F
    .locals 2
    .param p0, "textSize"    # F

    .prologue
    .line 635
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMaxNumericStringWidth(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const-string v1, ":"

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static getMaxNumericStringWidth(F)F
    .locals 6
    .param p0, "fontSize"    # F

    .prologue
    .line 608
    const-string v0, "0123456789"

    .line 609
    .local v0, "numbers":Ljava/lang/String;
    new-instance v1, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 610
    .local v1, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 611
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [F

    .line 613
    .local v2, "widths":[F
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 614
    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v3, v2, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->DEFAULT_PADDING:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    return v3
.end method
