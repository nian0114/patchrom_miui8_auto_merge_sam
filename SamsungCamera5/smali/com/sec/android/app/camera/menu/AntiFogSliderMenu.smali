.class public Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "AntiFogSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$MainHandler;,
        Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$AntiFogLevelMenuSelectListener;
    }
.end annotation


# static fields
.field private static final ANTI_FOG_LEVEL_NUM_OF_STEP_10:I

.field private static final ANTI_FOG_LEVEL_TEXT_FONT_SIZE:F

.field private static final ANTI_FOG_LEVEL_TEXT_HEIGTH:I

.field private static final ANTI_FOG_LEVEL_TEXT_STROKE_WIDTH:I

.field private static final ANTI_FOG_LEVEL_TEXT_WIDTH:I

.field private static final ANTI_FOG_LEVEL_TEXT_X:I

.field private static final ANTI_FOG_LEVEL_TEXT_Y:I

.field private static final ANTI_FOG_SLIDEBAR_HEIGHT:I

.field private static final ANTI_FOG_SLIDEBAR_POS_X:I

.field private static final ANTI_FOG_SLIDEBAR_POS_Y:I

.field private static final ANTI_FOG_SLIDEBAR_WIDTH:I

.field private static final ANTI_FOG_TITLE_ICON_HEIGHT:I

.field private static final ANTI_FOG_TITLE_ICON_WIDTH:I

.field private static final ANTI_FOG_TITLE_ICON_X:I

.field private static final ANTI_FOG_TITLE_ICON_Y:I

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

.field private static final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final SLIDE_ANTI_FOG_GROUP_HEIGHT:I

.field private static final SLIDE_ANTI_FOG_GROUP_POS_X:I

.field private static final SLIDE_ANTI_FOG_GROUP_POS_Y:I

.field private static final SLIDE_ANTI_FOG_GROUP_WIDTH:I

.field private static final ZOOM_SLIDEBAR_LANDSCAPE_POS_Y:I

.field private static final ZOOM_TEXT_COLOR:I

.field private static final ZOOM_TEXT_STROKE_COLOR:I


# instance fields
.field private mCommonLevelText:Lcom/samsung/android/glview/GLText;

.field private final mHandler:Landroid/os/Handler;

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTitleButton:Lcom/samsung/android/glview/GLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SCREEN_WIDTH:I

    .line 44
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SCREEN_HEIGHT:I

    .line 46
    const v0, 0x7f090216

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_X:I

    .line 47
    const v0, 0x7f090217

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_Y:I

    .line 48
    const v0, 0x7f090218

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    .line 49
    const v0, 0x7f090215

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_HEIGHT:I

    .line 51
    const v0, 0x7f090232

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_SLIDEBAR_LANDSCAPE_POS_Y:I

    .line 52
    const v0, 0x7f09022f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 54
    const v0, 0x7f09021a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_X:I

    .line 55
    const v0, 0x7f09021b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_Y:I

    .line 56
    const v0, 0x7f09021c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_WIDTH:I

    .line 57
    const v0, 0x7f090219

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_HEIGHT:I

    .line 59
    const v0, 0x7f09022d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 60
    const v0, 0x7f09022e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    .line 61
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    .line 62
    const v0, 0x7f0c0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_COLOR:I

    .line 63
    const v0, 0x7f09021e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_X:I

    .line 64
    const v0, 0x7f09021f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_Y:I

    .line 65
    const v0, 0x7f090220

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    .line 66
    const v0, 0x7f09021d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_HEIGTH:I

    .line 67
    const v0, 0x7f090222

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_X:I

    .line 68
    const v0, 0x7f090223

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_Y:I

    .line 69
    const v0, 0x7f090224

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_WIDTH:I

    .line 70
    const v0, 0x7f090221

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_HEIGHT:I

    .line 72
    const v0, 0x7f09034a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_FONT_SIZE:F

    .line 73
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_STROKE_WIDTH:I

    .line 75
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_NUM_OF_STEP_10:I

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
    .line 90
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SCREEN_WIDTH:I

    int-to-float v8, v0

    sget v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SCREEN_HEIGHT:I

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

    .line 78
    new-instance v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 94
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 97
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_TITLE_ICON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020178

    const v7, 0x7f020178

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f080064

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mTitleButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 106
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_HEIGTH:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_FONT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 117
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020170

    const v7, 0x7f020171

    sget v8, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_NUM_OF_STEP_10:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method


# virtual methods
.method protected onHide()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->stopSliderMenuTimer()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 180
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 185
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->hideMenu()V

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onShow()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->restartSliderMenuTimer()V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v0

    .line 195
    .local v0, "value":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

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
    .line 203
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 208
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    return-void
.end method
