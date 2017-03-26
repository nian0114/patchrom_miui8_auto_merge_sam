.class public Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EffectLevelSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# static fields
.field private static final EFFECT_LEVEL_INDICATOR_TEXT_COLOR:I

.field private static final EFFECT_LEVEL_INDICATOR_TEXT_FONT_SIZE:I

.field private static final EFFECT_LEVEL_PRESET_VALUE_OFFSET:I

.field private static final EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

.field private static final EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

.field private static final EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

.field private static final EFFECT_LEVEL_SLIDER_GROUP_POS_Y:I

.field private static final EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

.field private static final EFFECT_LEVEL_SLIDER_HEIGHT:I

.field private static final EFFECT_LEVEL_SLIDER_TOUCH_AREA_HEIGHT:I

.field private static final EFFECT_LEVEL_SLIDER_TOUCH_AREA_WIDTH:I

.field private static final EFFECT_LEVEL_SLIDER_WIDTH:I

.field private static final EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

.field private static final EFFECT_LEVEL_TEXT_FONT_COLOR:I

.field private static final EFFECT_LEVEL_TEXT_FONT_SIZE:F

.field private static final EFFECT_LEVEL_TEXT_HEIGHT:F

.field private static final EFFECT_LEVEL_TEXT_STROKE_COLOR:I

.field private static final EFFECT_LEVEL_TEXT_STROKE_WIDTH:I

.field private static final EFFECT_LEVEL_TEXT_Y_MARGIN:F

.field private static final EFFECT_STRENGTH_LEVEL_NUM_OF_STEP:I

.field private static final EFFECT_STRENGTH_LEVEL_VALUE_OFFSET:I

.field private static final EFFECT_VIGNETTE_LEVEL_NUM_OF_STEP:I

.field private static final HIDE_TIMER_INTERVAL:J = 0xbb8L

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "EffectLevelSliderMenu"


# instance fields
.field private mEffectSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mHideEffectLevelSliderMenuRunnable:Ljava/lang/Runnable;

.field private mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

.field private mStrengthStep:I

.field private mStrengthText:Lcom/samsung/android/glview/GLText;

.field private mStrengthTextWidth:F

.field private mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

.field private mVignetteStep:I

.field private mVignetteText:Lcom/samsung/android/glview/GLText;

.field private mVignetteTextWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f0900d1

    .line 25
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_WIDTH:F

    .line 26
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    .line 28
    const v0, 0x7f0900d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_SIZE:F

    .line 29
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_COLOR:I

    .line 31
    const v0, 0x7f0900d8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_Y_MARGIN:F

    .line 32
    const v0, 0x7f0900d6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    .line 34
    const v0, 0x7f0900d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH:I

    .line 35
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_HEIGHT:I

    .line 36
    const v0, 0x7f0900d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    .line 37
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    .line 38
    const v0, 0x7f0900d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    .line 39
    const v0, 0x7f0900d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    .line 40
    const v0, 0x7f0901bc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_Y:I

    .line 41
    const v0, 0x7f0900da

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_TOUCH_AREA_WIDTH:I

    .line 42
    const v0, 0x7f0900d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_TOUCH_AREA_HEIGHT:I

    .line 43
    const v0, 0x7f0900db

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

    .line 45
    const v0, 0x7f0a0029

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_STRENGTH_LEVEL_NUM_OF_STEP:I

    .line 46
    const v0, 0x7f0a002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_VIGNETTE_LEVEL_NUM_OF_STEP:I

    .line 47
    const v0, 0x7f0a0027

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_PRESET_VALUE_OFFSET:I

    .line 48
    const v0, 0x7f0a0028

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_STRENGTH_LEVEL_VALUE_OFFSET:I

    .line 49
    const v0, 0x7f0a0026

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_INDICATOR_TEXT_FONT_SIZE:I

    .line 50
    const v0, 0x7f0c003d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_INDICATOR_TEXT_COLOR:I

    .line 51
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_STROKE_WIDTH:I

    .line 52
    const v0, 0x7f0c0027

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_STROKE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I
    .param p9, "slideDirection"    # I

    .prologue
    .line 78
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mHideEffectLevelSliderMenuRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mEffectSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthStep:I

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v0, 0x7f080024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    .line 85
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_Y_MARGIN:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f080024

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_INDICATOR_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_INDICATOR_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v1, 0x7f080024

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_SIZE:F

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;FI)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_Y_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 103
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020169

    sget v7, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_STRENGTH_LEVEL_NUM_OF_STEP:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$2;-><init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f080024

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080060

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_STRENGTH_LEVEL_VALUE_OFFSET:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mEffectSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteStep:I

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v0, 0x7f080025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    .line 122
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_Y_MARGIN:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f080025

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_INDICATOR_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_INDICATOR_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v1, 0x7f080025

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_SIZE:F

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_FONT_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;FI)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_Y_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 143
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH_INTERVAL:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_WIDTH:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020169

    sget v7, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_VIGNETTE_LEVEL_NUM_OF_STEP:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$3;-><init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f080025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080060

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_PRESET_VALUE_OFFSET:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mEffectSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mEffectSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthStep:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteStep:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteStep:I

    return p1
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->hideMenu()V

    .line 168
    :cond_0
    return v1
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->stopSliderMenuTimer()V

    .line 174
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 279
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 284
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 184
    packed-switch p1, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteTextWidth:F

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthTextWidth:F

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 200
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 206
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_SLIDER_GROUP_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->EFFECT_LEVEL_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 208
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_1

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "EffectLevelSliderMenu"

    const-string v1, "onShow()"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mEffectSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->refreshMenu()V

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 289
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 294
    return-void
.end method

.method public refreshMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$4;-><init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mStrengthSlider:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectStrengthLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;-><init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mVignetteSlider:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectVignetteLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 261
    return-void
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mHideEffectLevelSliderMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mHideEffectLevelSliderMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_0
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mHideEffectLevelSliderMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    :cond_0
    return-void
.end method
