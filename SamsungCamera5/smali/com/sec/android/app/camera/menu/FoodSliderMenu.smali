.class public Lcom/sec/android/app/camera/menu/FoodSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "FoodSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;,
        Lcom/sec/android/app/camera/menu/FoodSliderMenu$FoodLevelMenuSelectListener;
    }
.end annotation


# static fields
.field private static final FOOD_LEVEL_NUM_OF_STEP_9:I

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

.field private static final FOOD_TITLE_ICON_HEIGHT:I

.field private static final FOOD_TITLE_ICON_WIDTH:I

.field private static final FOOD_TITLE_ICON_X:I

.field private static final FOOD_TITLE_ICON_Y:I

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

.field private static final ZOOM_SLIDEBAR_LANDSCAPE_POS_Y:I

.field private static final ZOOM_TEXT_COLOR:I

.field private static final ZOOM_TEXT_STROKE_COLOR:I


# instance fields
.field protected mFoodLevelChangeListener:Lcom/sec/android/app/camera/menu/FoodSliderMenu$FoodLevelMenuSelectListener;

.field private final mHandler:Landroid/os/Handler;

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SCREEN_WIDTH:I

    .line 41
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SCREEN_HEIGHT:I

    .line 43
    const v0, 0x7f090226

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_POS_X:I

    .line 44
    const v0, 0x7f090227

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_POS_Y:I

    .line 45
    const v0, 0x7f090228

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_WIDTH:I

    .line 46
    const v0, 0x7f090225

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_HEIGHT:I

    .line 48
    const v0, 0x7f090232

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->ZOOM_SLIDEBAR_LANDSCAPE_POS_Y:I

    .line 49
    const v0, 0x7f09022f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 51
    const v0, 0x7f09022a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_POS_X:I

    .line 52
    const v0, 0x7f09022b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_POS_Y:I

    .line 53
    const v0, 0x7f09022c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    .line 54
    const v0, 0x7f090229

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    .line 56
    const v0, 0x7f09022d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 57
    const v0, 0x7f09022e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    .line 58
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    .line 59
    const v0, 0x7f0c0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->ZOOM_TEXT_COLOR:I

    .line 60
    const v0, 0x7f09021e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_TEXT_X:I

    .line 61
    const v0, 0x7f09021f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_TEXT_Y:I

    .line 62
    const v0, 0x7f090220

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_TEXT_WIDTH:I

    .line 63
    const v0, 0x7f09021d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_TEXT_HEIGTH:I

    .line 64
    const v0, 0x7f090222

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_TITLE_ICON_X:I

    .line 65
    const v0, 0x7f090223

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_TITLE_ICON_Y:I

    .line 66
    const v0, 0x7f090224

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_TITLE_ICON_WIDTH:I

    .line 67
    const v0, 0x7f090221

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_TITLE_ICON_HEIGHT:I

    .line 69
    const v0, 0x7f09034a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_TEXT_FONT_SIZE:F

    .line 70
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_TEXT_STROKE_WIDTH:I

    .line 72
    const v0, 0x7f0a0055

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_NUM_OF_STEP_9:I

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
    .line 86
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SCREEN_WIDTH:I

    int-to-float v8, v0

    sget v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SCREEN_HEIGHT:I

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

    .line 76
    new-instance v0, Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/FoodSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/FoodSliderMenu;Lcom/sec/android/app/camera/menu/FoodSliderMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDE_FOOD_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 90
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0200c9

    sget v7, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->FOOD_LEVEL_NUM_OF_STEP_9:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/FoodSliderMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/FoodSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onHide()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->stopSliderMenuTimer()V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 165
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 170
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->hideMenu()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->restartSliderMenuTimer()V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodLevel()I

    move-result v0

    .line 181
    .local v0, "value":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 188
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 193
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    return-void
.end method

.method public setFoodLevelChangeListener(Lcom/sec/android/app/camera/menu/FoodSliderMenu$FoodLevelMenuSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/FoodSliderMenu$FoodLevelMenuSelectListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mFoodLevelChangeListener:Lcom/sec/android/app/camera/menu/FoodSliderMenu$FoodLevelMenuSelectListener;

    .line 147
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    return-void
.end method
