.class public final Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DynamicAutoBrightnessConfig"
.end annotation


# instance fields
.field protected mAutoBrightnessLevelStepRatio:F

.field protected mAutoBrightnessLevelStepRatioAt0Lux:F

.field protected mAutoBrightnessLevelStepRatioForEbook:F

.field protected mBrightnessLevels:[I

.field protected mBrightnessLevelsForEbookOnly:[I

.field protected mBrightnessValueSlope:[F

.field protected mBrightnessValueSlopeForEbookOnly:[F

.field protected mBrightnessValues:[I

.field protected mBrightnessValuesForEbookOnly:[I

.field protected mHighHysteresisLevels:[I

.field protected mHighHysteresisLevelsForEbookOnly:[I

.field protected mHighHysteresisSlope:[F

.field protected mHighHysteresisSlopeForEbookOnly:[F

.field protected mHighHysteresisValues:[I

.field protected mHighHysteresisValuesForEbookOnly:[I

.field private mIsTablet:Z

.field protected mLowHysteresisLevels:[I

.field protected mLowHysteresisLevelsForEbookOnly:[I

.field protected mLowHysteresisSlope:[F

.field protected mLowHysteresisSlopeForEbookOnly:[F

.field protected mLowHysteresisValues:[I

.field protected mLowHysteresisValuesForEbookOnly:[I

.field protected mLowLimitAtHighestAutoBrightnessLevel:I

.field protected mMinimumBrightnessStepValue:I

.field protected mMinimumExpressiveBrightnessValues:[I

.field protected mValueOfVirtualZeroCandela:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2866
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2867
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 2895
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    .line 2896
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    .line 2897
    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 3168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 2866
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3307
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$1900(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3308
    const-string v4, ""

    .line 3309
    .local v4, "mStrLowHysteresisPoints":Ljava/lang/String;
    const-string v2, ""

    .line 3310
    .local v2, "mStrBrightnessValuePoints":Ljava/lang/String;
    const-string v3, ""

    .line 3311
    .local v3, "mStrHighHysteresisPoints":Ljava/lang/String;
    const-string v5, ""

    .line 3313
    .local v5, "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    const-string v6, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 3318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3320
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 3322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3324
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 3326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3328
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 3330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3329
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3332
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    const-string v6, "[DAB] USE_EBOOK_AUTO_BRIGHTNESS_TABLE = false"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAutoBrightnessLevelStepRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAutoBrightnessLevelStepRatioAt0Lux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAutoBrightnessLevelStepRatioForEbook="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    .end local v1    # "i":I
    .end local v2    # "mStrBrightnessValuePoints":Ljava/lang/String;
    .end local v3    # "mStrHighHysteresisPoints":Ljava/lang/String;
    .end local v4    # "mStrLowHysteresisPoints":Ljava/lang/String;
    .end local v5    # "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    :cond_4
    :goto_4
    return-void

    .line 3364
    :catch_0
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "DisplayPowerController"

    const-string v7, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v6, v7, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private getAutoBrightnessTablePacket()[B
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 3009
    const/4 v4, 0x0

    .line 3010
    .local v4, "listSize":I
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v9, v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v10, v10

    add-int v5, v9, v10

    .line 3019
    .local v5, "nomalTableSize":I
    move v4, v5

    .line 3021
    new-array v1, v4, [I

    .line 3022
    .local v1, "dataArray":[I
    const/4 v7, 0x0

    .line 3023
    .local v7, "pos":I
    const/4 v0, 0x6

    .line 3024
    .local v0, "arraySize":I
    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x7

    new-array v6, v9, [B

    .line 3026
    .local v6, "packet":[B
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3027
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3028
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3029
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3030
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3031
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3032
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3033
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3034
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3035
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3036
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3037
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3052
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$1500()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3053
    const-string v8, ""

    .line 3054
    .local v8, "strData":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v1

    if-ge v3, v9, :cond_0

    .line 3055
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3054
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3057
    :cond_0
    const-string v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[DAB] data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    .end local v3    # "i":I
    .end local v8    # "strData":Ljava/lang/String;
    :cond_1
    int-to-byte v9, v0

    aput-byte v9, v6, v12

    .line 3061
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3062
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3063
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3064
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3065
    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3066
    const/4 v9, 0x6

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3076
    const/4 v2, 0x7

    .line 3077
    .local v2, "dataArrayStartPos":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_2

    .line 3078
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x0

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3079
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3080
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x2

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3081
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x3

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3077
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3084
    :cond_2
    return-object v6
.end method

.method private getSlope(IIIIZ)F
    .locals 8
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "bx"    # I
    .param p4, "by"    # I
    .param p5, "bReverse"    # Z

    .prologue
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 3155
    const/4 v0, 0x0

    .line 3156
    .local v0, "slope":F
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    .line 3157
    :cond_0
    const/4 v0, 0x0

    .line 3165
    :goto_0
    return v0

    .line 3159
    :cond_1
    if-eqz p5, :cond_2

    .line 3160
    int-to-double v2, p3

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    sub-int v2, p4, p2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0

    .line 3162
    :cond_2
    sub-int v1, p4, p2

    int-to-float v1, v1

    int-to-double v2, p3

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 3170
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3171
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendAutoBrightnessTablePacket([B)V
    .locals 6
    .param p1, "packet"    # [B

    .prologue
    .line 3088
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>([B)V

    .line 3089
    .local v0, "attr":Landroid/hardware/scontext/SContextAutoBrightnessAttribute;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/scontext/SContextManager;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 3092
    const-string v2, ""

    .line 3093
    .local v2, "strPacket":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 3094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3093
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3096
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mStrAutoBrightnessTablePacket:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/display/DisplayPowerController;->access$1702(Lcom/android/server/display/DisplayPowerController;Ljava/lang/String;)Ljava/lang/String;

    .line 3097
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DAB] packet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    return-void
.end method


# virtual methods
.method protected getDynamicAutoBrightnessHighHysteresis(F)F
    .locals 18
    .param p1, "cd"    # F

    .prologue
    .line 3270
    const/4 v6, 0x0

    .line 3271
    .local v6, "lux":F
    const/4 v3, 0x0

    .line 3272
    .local v3, "i":I
    const/4 v4, 0x1

    .line 3273
    .local v4, "isNormalMode":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3274
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_2

    const/4 v4, 0x1

    .line 3276
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    .line 3277
    .local v5, "levels":[I
    :goto_1
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    .line 3278
    .local v8, "values":[I
    :goto_2
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[F

    .line 3280
    .local v7, "slopes":[F
    :goto_3
    const/4 v3, 0x1

    :goto_4
    array-length v9, v8

    if-ge v3, v9, :cond_1

    .line 3281
    aget v9, v8, v3

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_6

    .line 3285
    :cond_1
    array-length v9, v5

    if-lt v3, v9, :cond_7

    .line 3286
    array-length v9, v5

    add-int/lit8 v3, v9, -0x1

    .line 3287
    aget v9, v5, v3

    int-to-float v6, v9

    .line 3300
    .end local v5    # "levels":[I
    .end local v6    # "lux":F
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :goto_5
    return v6

    .line 3274
    .restart local v6    # "lux":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3276
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevelsForEbookOnly:[I

    goto :goto_1

    .line 3277
    .restart local v5    # "levels":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValuesForEbookOnly:[I

    goto :goto_2

    .line 3278
    .restart local v8    # "values":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlopeForEbookOnly:[F

    goto :goto_3

    .line 3280
    .restart local v7    # "slopes":[F
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3289
    :cond_7
    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 3290
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    add-int/lit8 v12, v3, -0x1

    aget v12, v8, v12

    int-to-float v12, v12

    sub-float v12, p1, v12

    mul-float/2addr v9, v12

    float-to-double v12, v9

    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v6, v9

    goto :goto_5

    .line 3293
    :cond_8
    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v6, v9

    goto :goto_5

    .line 3297
    .end local v5    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :catch_0
    move-exception v2

    .line 3299
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v9, v10, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3300
    const v6, 0x459c4000    # 5000.0f

    goto :goto_5
.end method

.method protected getDynamicAutoBrightnessLevelStepRatio(FZ)F
    .locals 22
    .param p1, "lux"    # F
    .param p2, "isNormalMode"    # Z

    .prologue
    .line 2966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 2967
    .local v6, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x0

    .line 2968
    .local v4, "i":I
    const/4 v8, 0x0

    .line 2969
    .local v8, "screenBrightnessSettingDefault":F
    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 2970
    .local v5, "levels":[I
    :goto_0
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 2971
    .local v12, "values":[I
    :goto_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    .line 2974
    .local v11, "slopes":[F
    :goto_2
    const/4 v4, 0x0

    :goto_3
    :try_start_0
    array-length v13, v5

    if-ge v4, v13, :cond_0

    .line 2975
    aget v13, v5, v4

    int-to-float v13, v13

    cmpg-float v13, p1, v13

    if-gtz v13, :cond_4

    .line 2979
    :cond_0
    array-length v13, v12

    if-lt v4, v13, :cond_5

    .line 2980
    array-length v13, v12

    add-int/lit8 v13, v13, -0x1

    aget v13, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v8, v13

    .line 2994
    :goto_4
    const/4 v7, 0x0

    .line 2995
    .local v7, "ratio":F
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-nez v13, :cond_7

    .line 2996
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v10

    .line 2997
    .local v10, "screenBrightnessSettingMinimum":I
    int-to-float v13, v10

    div-float/2addr v13, v8

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    .line 3002
    .end local v10    # "screenBrightnessSettingMinimum":I
    :goto_5
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v7, v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3004
    .local v2, "autoBrightnessLevelStepRatio":F
    return v2

    .line 2969
    .end local v2    # "autoBrightnessLevelStepRatio":F
    .end local v5    # "levels":[I
    .end local v7    # "ratio":F
    .end local v11    # "slopes":[F
    .end local v12    # "values":[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    goto :goto_0

    .line 2970
    .restart local v5    # "levels":[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    goto :goto_1

    .line 2971
    .restart local v12    # "values":[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[F

    goto :goto_2

    .line 2974
    .restart local v11    # "slopes":[F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2982
    :cond_5
    add-int/lit8 v13, v4, -0x1

    :try_start_1
    aget v13, v11, v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 2983
    add-int/lit8 v13, v4, -0x1

    aget v13, v11, v13

    float-to-double v14, v13

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    add-int/lit8 v13, v4, -0x1

    aget v13, v5, v13

    int-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log10(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-int/lit8 v13, v4, -0x1

    aget v13, v12, v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-int v13, v14

    int-to-float v8, v13

    goto :goto_4

    .line 2986
    :cond_6
    aget v13, v12, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v8, v13

    goto :goto_4

    .line 2989
    :catch_0
    move-exception v3

    .line 2990
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "DisplayPowerController"

    const-string v14, "[DAB] Failed to get the Auto Brightness Setting Default value."

    invoke-static {v13, v14, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2991
    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v13

    int-to-float v8, v13

    goto/16 :goto_4

    .line 2999
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "ratio":F
    :cond_7
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    .line 3000
    .local v9, "screenBrightnessSettingMaximum":I
    int-to-float v13, v9

    div-float/2addr v13, v8

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    goto/16 :goto_5
.end method

.method protected getDynamicAutoBrightnessLowHysteresis(F)F
    .locals 18
    .param p1, "cd"    # F

    .prologue
    .line 3234
    const/4 v6, 0x0

    .line 3235
    .local v6, "lux":F
    const/4 v3, 0x0

    .line 3236
    .local v3, "i":I
    const/4 v4, 0x1

    .line 3237
    .local v4, "isNormalMode":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3238
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_2

    const/4 v4, 0x1

    .line 3240
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    .line 3241
    .local v5, "levels":[I
    :goto_1
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    .line 3242
    .local v8, "values":[I
    :goto_2
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[F

    .line 3244
    .local v7, "slopes":[F
    :goto_3
    const/4 v3, 0x1

    :goto_4
    array-length v9, v8

    if-ge v3, v9, :cond_1

    .line 3245
    aget v9, v8, v3

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_6

    .line 3249
    :cond_1
    array-length v9, v5

    if-lt v3, v9, :cond_7

    .line 3250
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget v9, v5, v9

    int-to-float v6, v9

    .line 3263
    .end local v5    # "levels":[I
    .end local v6    # "lux":F
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :goto_5
    return v6

    .line 3238
    .restart local v6    # "lux":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3240
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevelsForEbookOnly:[I

    goto :goto_1

    .line 3241
    .restart local v5    # "levels":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValuesForEbookOnly:[I

    goto :goto_2

    .line 3242
    .restart local v8    # "values":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlopeForEbookOnly:[F

    goto :goto_3

    .line 3244
    .restart local v7    # "slopes":[F
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3252
    :cond_7
    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 3253
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v3, -0x1

    aget v9, v7, v9

    add-int/lit8 v12, v3, -0x1

    aget v12, v8, v12

    int-to-float v12, v12

    sub-float v12, p1, v12

    mul-float/2addr v9, v12

    float-to-double v12, v9

    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v6, v9

    goto :goto_5

    .line 3256
    :cond_8
    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v6, v9

    goto :goto_5

    .line 3260
    .end local v5    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :catch_0
    move-exception v2

    .line 3262
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v9, v10, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3263
    const v6, 0x459c4000    # 5000.0f

    goto :goto_5
.end method

.method protected getDynamicAutoBrightnessValue(F)F
    .locals 18
    .param p1, "lux"    # F

    .prologue
    .line 3198
    const/4 v2, 0x0

    .line 3199
    .local v2, "cd":F
    const/4 v4, 0x0

    .line 3200
    .local v4, "i":I
    const/4 v5, 0x1

    .line 3201
    .local v5, "isNormalMode":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3202
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_2

    const/4 v5, 0x1

    .line 3204
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 3205
    .local v6, "levels":[I
    :goto_1
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 3206
    .local v8, "values":[I
    :goto_2
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    .line 3208
    .local v7, "slopes":[F
    :goto_3
    const/4 v4, 0x1

    :goto_4
    array-length v9, v6

    if-ge v4, v9, :cond_1

    .line 3209
    aget v9, v6, v4

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_6

    .line 3213
    :cond_1
    array-length v9, v8

    if-lt v4, v9, :cond_7

    .line 3214
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget v9, v8, v9

    int-to-float v2, v9

    .line 3227
    .end local v2    # "cd":F
    .end local v6    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :goto_5
    return v2

    .line 3202
    .restart local v2    # "cd":F
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 3204
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevelsForEbookOnly:[I

    goto :goto_1

    .line 3205
    .restart local v6    # "levels":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValuesForEbookOnly:[I

    goto :goto_2

    .line 3206
    .restart local v8    # "values":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlopeForEbookOnly:[F

    goto :goto_3

    .line 3208
    .restart local v7    # "slopes":[F
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3216
    :cond_7
    add-int/lit8 v9, v4, -0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 3217
    add-int/lit8 v9, v4, -0x1

    aget v9, v7, v9

    float-to-double v10, v9

    move/from16 v0, p1

    float-to-double v12, v0

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    add-int/lit8 v9, v4, -0x1

    aget v9, v6, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-int/lit8 v9, v4, -0x1

    aget v9, v8, v9

    int-to-double v12, v9

    add-double/2addr v10, v12

    double-to-float v2, v10

    goto :goto_5

    .line 3220
    :cond_8
    add-int/lit8 v9, v4, -0x1

    aget v9, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v9

    goto :goto_5

    .line 3224
    .end local v6    # "levels":[I
    .end local v7    # "slopes":[F
    .end local v8    # "values":[I
    :catch_0
    move-exception v3

    .line 3226
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v9, v10, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3227
    const/high16 v2, 0x437f0000    # 255.0f

    goto :goto_5
.end method

.method protected getFinalDynamicAutoBrightnessValue(FF)I
    .locals 8
    .param p1, "lux"    # F
    .param p2, "origDynamicBrightness"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 3175
    float-to-int v1, p2

    .line 3177
    .local v1, "finalBrightness":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3179
    .local v0, "autoBrightnessAdj":F
    const v2, 0x459c4000    # 5000.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_0

    .line 3180
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DAB] finalBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3184
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 3185
    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L    # -0.4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_2

    .line 3186
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    .line 3192
    :cond_1
    :goto_0
    return v1

    .line 3187
    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_1

    .line 3188
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_0
.end method

.method protected initDynamicAutoBrightnessSlopeTables()V
    .locals 12

    .prologue
    .line 3104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 3105
    .local v10, "lengthOfLowHysteresisSlope":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 3106
    .local v8, "lengthOfBrightnessValueSlope":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 3108
    .local v9, "lengthOfHighHysteresisSlope":I
    new-array v0, v10, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[F

    .line 3109
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    .line 3110
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[F

    .line 3111
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 3112
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v11, v7

    .line 3111
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3115
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 3116
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v11, v7

    .line 3115
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3119
    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_2

    .line 3120
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v11, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3119
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3149
    .end local v7    # "i":I
    .end local v8    # "lengthOfBrightnessValueSlope":I
    .end local v9    # "lengthOfHighHysteresisSlope":I
    .end local v10    # "lengthOfLowHysteresisSlope":I
    :catch_0
    move-exception v6

    .line 3150
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3152
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method protected initializeProperties()V
    .locals 4

    .prologue
    .line 2900
    const-string v2, "DisplayPowerController"

    const-string v3, "[DAB] Load SEC Auto-brightness setting"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2907
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    .line 2910
    const v2, 0x1070060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    .line 2912
    const v2, 0x1070061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    .line 2914
    const v2, 0x1070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    .line 2916
    const v2, 0x1070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    .line 2918
    const v2, 0x1070064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    .line 2920
    const v2, 0x1070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    .line 2940
    const v2, 0x107005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    .line 2942
    const v2, 0x10e00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    .line 2944
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->initDynamicAutoBrightnessSlopeTables()V

    .line 2947
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-eqz v2, :cond_2

    .line 2948
    const v2, 0x3e6b8520    # 0.23000002f

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    .line 2952
    :cond_0
    :goto_0
    const/high16 v2, 0x43fa0000    # 500.0f

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLevelStepRatio(FZ)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    .line 2958
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2959
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getAutoBrightnessTablePacket()[B

    move-result-object v0

    .line 2960
    .local v0, "packet":[B
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->sendAutoBrightnessTablePacket([B)V

    .line 2963
    .end local v0    # "packet":[B
    :cond_1
    return-void

    .line 2949
    :cond_2
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    if-eqz v2, :cond_0

    .line 2950
    :cond_3
    const v2, 0x3eda1cac    # 0.426f

    iput v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    goto :goto_0
.end method
