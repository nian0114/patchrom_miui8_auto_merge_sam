.class public Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "FoodBlurLevelSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;,
        Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$FoodBlurLevelSliderMenuSelectListener;
    }
.end annotation


# static fields
.field private static final FOOD_LENS_SIZE_LEVEL_NUM_OF_STEP_100:I = 0x64

.field private static final FOOD_LEVEL_TEXT_FONT_SIZE:F

.field private static final FOOD_LEVEL_TEXT_HEIGTH:I

.field private static final FOOD_LEVEL_TEXT_STROKE_WIDTH:I

.field private static final FOOD_LEVEL_TEXT_WIDTH:I

.field private static final FOOD_LEVEL_TEXT_X:I

.field private static final FOOD_LEVEL_TEXT_Y:I

.field private static final FOOD_SLIDEBAR_HEIGHT:I

.field private static final FOOD_SLIDEBAR_POS_X:I

.field private static final FOOD_SLIDEBAR_POS_Y:I

.field private static final FOOD_SLIDEBAR_WIDTH:I

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

.field private static final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final SLIDE_FOOD_GROUP_HEIGHT:I

.field private static final SLIDE_FOOD_GROUP_POS_X:I

.field private static final SLIDE_FOOD_GROUP_POS_Y:I

.field private static final SLIDE_FOOD_GROUP_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "FoodBlurLevelSliderMenu"

.field private static final ZOOM_TEXT_COLOR:I

.field private static final ZOOM_TEXT_STROKE_COLOR:I


# instance fields
.field private mCommonLevelText:Lcom/samsung/android/glview/GLText;

.field protected mFoodBlurLevelChangeListener:Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$FoodBlurLevelSliderMenuSelectListener;

.field private final mHandler:Landroid/os/Handler;

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SCREEN_WIDTH:I

    .line 43
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SCREEN_HEIGHT:I

    .line 45
    const v0, 0x7f090226

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_POS_X:I

    .line 46
    const v0, 0x7f090227

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_POS_Y:I

    .line 47
    const v0, 0x7f090228

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_WIDTH:I

    .line 48
    const v0, 0x7f090225

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_HEIGHT:I

    .line 50
    const v0, 0x7f09022f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 52
    const v0, 0x7f09022a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_POS_X:I

    .line 53
    const v0, 0x7f09022b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_POS_Y:I

    .line 54
    const v0, 0x7f09022c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    .line 55
    const v0, 0x7f090229

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    .line 57
    const v0, 0x7f09022d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 58
    const v0, 0x7f09022e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    .line 59
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    .line 60
    const v0, 0x7f0c0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->ZOOM_TEXT_COLOR:I

    .line 61
    const v0, 0x7f09021e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_X:I

    .line 62
    const v0, 0x7f09021f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_Y:I

    .line 63
    const v0, 0x7f090220

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_WIDTH:I

    .line 64
    const v0, 0x7f09021d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_HEIGTH:I

    .line 66
    const v0, 0x7f09034a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_FONT_SIZE:F

    .line 67
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_STROKE_WIDTH:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 13
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
    .line 83
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SCREEN_WIDTH:I

    int-to-float v8, v0

    sget v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SCREEN_HEIGHT:I

    int-to-float v9, v0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 72
    new-instance v0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 87
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDE_FOOD_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 89
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_HEIGTH:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_FONT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->ZOOM_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 100
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020170

    const v7, 0x7f020171

    const/16 v8, 0x64

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->hideMenu()V

    .line 129
    :cond_0
    return v1
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->stopSliderMenuTimer()V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 179
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 184
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 139
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->hideMenu()V

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onShow()V
    .locals 6

    .prologue
    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->restartSliderMenuTimer()V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurLevel()I

    move-result v0

    .line 194
    .local v0, "value":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 202
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 207
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void
.end method

.method public setFoodBlurLevelChangeListener(Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$FoodBlurLevelSliderMenuSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$FoodBlurLevelSliderMenuSelectListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mFoodBlurLevelChangeListener:Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$FoodBlurLevelSliderMenuSelectListener;

    .line 161
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    return-void
.end method
