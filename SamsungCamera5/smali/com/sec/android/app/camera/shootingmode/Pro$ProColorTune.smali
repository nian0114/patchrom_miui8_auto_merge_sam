.class Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
.super Ljava/lang/Object;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProColorTune"
.end annotation


# instance fields
.field private mColorTuneKey:Ljava/lang/String;

.field private mColortuneType:I

.field private mContrast:I

.field private mDefaultContrast:I

.field private mDefaultHighlight:I

.field private mDefaultSaturation:I

.field private mDefaultShadow:I

.field private mDefaultTemperature:I

.field private mDefaultTint:I

.field private mHighlight:I

.field private mSaturation:I

.field private mShadow:I

.field private mState:I

.field private mTemperature:I

.field private mTint:I

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 4
    .param p2, "colorTuneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 3417
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3415
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    .line 3418
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColortuneType:I

    .line 3419
    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColorTuneKey:Ljava/lang/String;

    .line 3421
    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColortuneType:I

    aget-object v1, v1, v2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3423
    .local v0, "splitDefaultColorTuneValue":[Ljava/lang/String;
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTemperature:I

    .line 3424
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTint:I

    .line 3425
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultContrast:I

    .line 3426
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultSaturation:I

    .line 3427
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultHighlight:I

    .line 3428
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultShadow:I

    .line 3430
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    .line 3431
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    .prologue
    .line 3396
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isDefaultColortuneValues()Z

    move-result v0

    return v0
.end method

.method private getColorTuneDivideFactor()I
    .locals 1

    .prologue
    .line 3509
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isPresetColorTuneType()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_DIVIDE_FACTOR:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1300()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_DIVIDE_FACTOR:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1400()I

    move-result v0

    goto :goto_0
.end method

.method private getColorTuneMaxOffsetValue()I
    .locals 1

    .prologue
    .line 3513
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isPresetColorTuneType()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1500()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1600()I

    move-result v0

    goto :goto_0
.end method

.method private getColorTuneValueFromPreference(Ljava/lang/String;I)I
    .locals 4
    .param p1, "prefColorTuneValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 3517
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneMaxOffsetValue()I

    move-result v3

    add-int v0, p2, v3

    .line 3518
    .local v0, "max":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneMaxOffsetValue()I

    move-result v3

    sub-int v1, p2, v3

    .line 3520
    .local v1, "min":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3522
    .local v2, "value":I
    if-le v2, v0, :cond_1

    .line 3523
    move v2, v0

    .line 3527
    :cond_0
    :goto_0
    return v2

    .line 3524
    :cond_1
    if-ge v2, v1, :cond_0

    .line 3525
    move v2, v1

    goto :goto_0
.end method

.method private isDefaultColortuneValues()Z
    .locals 2

    .prologue
    .line 3531
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTemperature:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTint:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultContrast:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultSaturation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultHighlight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultShadow:I

    if-eq v0, v1, :cond_1

    .line 3533
    :cond_0
    const/4 v0, 0x0

    .line 3535
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPresetColorTuneType()Z
    .locals 2

    .prologue
    .line 3539
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColortuneType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColortuneType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 3543
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isDefaultColortuneValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3544
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    .line 3548
    :goto_0
    return-void

    .line 3546
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    goto :goto_0
.end method


# virtual methods
.method protected getColorTuneSliderValues()[I
    .locals 4

    .prologue
    .line 3453
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTemperature:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTint:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultContrast:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultSaturation:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultHighlight:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultShadow:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v3

    div-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public getEffectParamterString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3434
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "customcolor,TE=%d,TI=%d,CO=%d,SA=%d,HL=%d,SL=%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 3438
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    return v0
.end method

.method protected loadColorTuneValues()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3457
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColorTuneKey:Ljava/lang/String;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColortuneType:I

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3458
    .local v0, "prefColorTuneValue":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3460
    .local v1, "splitColorTuneValue":[Ljava/lang/String;
    aget-object v2, v1, v6

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTemperature:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    .line 3461
    aget-object v2, v1, v7

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTint:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    .line 3462
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultContrast:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    .line 3463
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultSaturation:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    .line 3464
    const/4 v2, 0x4

    aget-object v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultHighlight:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    .line 3465
    const/4 v2, 0x5

    aget-object v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultShadow:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    .line 3467
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isDefaultColortuneValues()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3468
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    .line 3472
    :goto_0
    return-void

    .line 3470
    :cond_0
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    goto :goto_0
.end method

.method public resetColorTuneValues()V
    .locals 1

    .prologue
    .line 3442
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTemperature:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    .line 3443
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTint:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    .line 3444
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultContrast:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    .line 3445
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultSaturation:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    .line 3446
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultHighlight:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    .line 3447
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultShadow:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    .line 3449
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    .line 3450
    return-void
.end method

.method protected saveColorTuneValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3475
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mColorTuneKey:Ljava/lang/String;

    const-string v2, "%d,%d,%d,%d,%d,%d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isDefaultColortuneValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3478
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mState:I

    .line 3480
    :cond_0
    return-void
.end method

.method protected setColortuneValue(II)V
    .locals 2
    .param p1, "sliderId"    # I
    .param p2, "sliderValue"    # I

    .prologue
    .line 3483
    packed-switch p1, :pswitch_data_0

    .line 3505
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->updateState()V

    .line 3506
    return-void

    .line 3485
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v0

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTemperature:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTemperature:I

    goto :goto_0

    .line 3488
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v0

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultTint:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mTint:I

    goto :goto_0

    .line 3491
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v0

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultContrast:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mContrast:I

    goto :goto_0

    .line 3494
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v0

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultSaturation:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mSaturation:I

    goto :goto_0

    .line 3497
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v0

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultHighlight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mHighlight:I

    goto :goto_0

    .line 3500
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneDivideFactor()I

    move-result v0

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mDefaultShadow:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->mShadow:I

    goto :goto_0

    .line 3483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
