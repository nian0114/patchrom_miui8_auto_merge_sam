.class public Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "AudioRecordIndicator.java"


# static fields
.field private static final INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

.field private static final INDICATOR_EQBAR_BAND_POS_X_START:I

.field private static final INDICATOR_EQBAR_BAND_SPACING:I

.field private static final INDICATOR_EQBAR_BAND_WIDTH:I

.field private static final INDICATOR_EQBAR_BG_HEIGHT:I

.field private static final INDICATOR_EQBAR_BG_WIDTH:I

.field private static final INDICATOR_EQBAR_LAND_TOP_MARGIN:I

.field private static final INDICATOR_EQBAR_MIC_WIDTH:I

.field private static final INDICATOR_EQBAR_MIC_Y:I

.field private static final INDICATOR_EQBAR_PORT_TOP_MARGIN:I

.field private static final INDICATOR_EQBAR_WIDTH:I

.field private static final INDICATOR_EQBAR_Y:I

.field private static final NUM_OF_EQBAR:I = 0x8

.field private static final NUM_OF_EQ_LEVEL_MAX:I = 0x7

.field private static final RATIO_4_3_MARGIN:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "AudioRecordIndicator"

.field public static final UPDATE_REC_MICIMAGE_MSG:I = 0x1


# instance fields
.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mEqValueArray:[I

.field private mMicImageArray:[I

.field private mRecIndicatorHandler:Landroid/os/Handler;

.field private mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordAmpIndicatorBG:Lcom/samsung/android/glview/GLImage;

.field private mRecordAmpIndicatorMicImage:Lcom/samsung/android/glview/GLImage;

.field private mUpdateCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    .line 41
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_HEIGHT:I

    .line 42
    const v0, 0x7f090013

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    .line 43
    const v0, 0x7f090012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_HEIGHT:I

    .line 44
    const v0, 0x7f090018

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_Y:I

    .line 45
    const v0, 0x7f090016

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_MIC_Y:I

    .line 46
    const v0, 0x7f090011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_WIDTH:I

    .line 47
    const v0, 0x7f090015

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_MIC_WIDTH:I

    .line 48
    const v0, 0x7f090010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_SPACING:I

    .line 49
    const v0, 0x7f09000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    .line 50
    sget v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_WIDTH:I

    mul-int/lit8 v0, v0, 0x8

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_SPACING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_MIC_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_WIDTH:I

    .line 52
    sget v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_POS_X_START:I

    .line 53
    const v0, 0x7f090014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    .line 54
    const v0, 0x7f090017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_PORT_TOP_MARGIN:I

    .line 55
    const v0, 0x7f0900ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->RATIO_4_3_MARGIN:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 77
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mEqValueArray:[I

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mMicImageArray:[I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mUpdateCnt:I

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator$1;-><init>(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecIndicatorHandler:Landroid/os/Handler;

    .line 78
    const-string v0, "AudioRecordIndicator"

    const-string v2, "AudioRecordIndicator"

    invoke-static {v0, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 80
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    .line 82
    .local v1, "glContext":Lcom/samsung/android/glview/GLContext;
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_PORT_TOP_MARGIN:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_PORT_TOP_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_HEIGHT:I

    sget v9, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 93
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02027f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/samsung/android/glview/GLImage;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 97
    const/4 v6, 0x0

    .local v6, "bandPosX":I
    const/4 v8, 0x0

    .line 99
    .local v8, "micPosX":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v7, v0, :cond_2

    .line 101
    if-nez v7, :cond_0

    .line 102
    sget v6, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_POS_X_START:I

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    int-to-float v3, v6

    sget v4, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_Y:I

    int-to-float v4, v4

    const v5, 0x7f020277

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 99
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x4

    if-ne v7, v0, :cond_1

    .line 104
    sget v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v0, v6

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v8, v0, v2

    .line 105
    sget v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_MIC_WIDTH:I

    add-int/2addr v0, v8

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v6, v0, v2

    goto :goto_1

    .line 107
    :cond_1
    sget v0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v0, v6

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BAND_SPACING:I

    add-int v6, v0, v2

    goto :goto_1

    .line 115
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    int-to-float v2, v8

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_MIC_Y:I

    int-to-float v3, v3

    const v4, 0x7f020263

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/samsung/android/glview/GLImage;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 122
    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
        0x7f02027b
        0x7f02027c
        0x7f02027d
        0x7f02027e
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x7f020263
        0x7f020264
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mUpdateCnt:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mUpdateCnt:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mMicImageArray:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecIndicatorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private startMicAnimation()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecIndicatorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecIndicatorHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    :cond_0
    return-void
.end method

.method private stopMicAnimation()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecIndicatorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecIndicatorHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mUpdateCnt:I

    .line 199
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "AudioRecordIndicator"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->stopMicAnimation()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mUpdateCnt:I

    .line 134
    return-void
.end method

.method public setRecoring()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "AudioRecordIndicator"

    const-string v1, "setRecoring"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->startMicAnimation()V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->updateLayoutForRatio()V

    .line 142
    return-void
.end method

.method public setRecoringAmplitude([I)V
    .locals 5
    .param p1, "MicAmplitude"    # [I

    .prologue
    const/4 v4, 0x7

    .line 146
    const/16 v2, 0x8

    new-array v0, v2, [I

    .line 147
    .local v0, "EqBandLevel":[I
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 169
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 156
    aget v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 158
    aget v2, v0, v1

    if-le v2, v4, :cond_3

    .line 159
    aput v4, v0, v1

    .line 155
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mEqValueArray:[I

    aget v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public updateLayoutForRatio()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 175
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->RATIO_4_3_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->RATIO_4_3_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 186
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->mRecordAmpIndicator:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_LAND_TOP_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->INDICATOR_EQBAR_BG_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_0
.end method
