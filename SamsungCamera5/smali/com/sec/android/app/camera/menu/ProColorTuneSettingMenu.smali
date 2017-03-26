.class public Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ProColorTuneSettingMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_BUTTON_OFFSET:I

.field private static final ACTION_BAR_FONT_SIZE:I

.field private static final ACTION_BAR_HEIGHT:I

.field private static final ACTION_BAR_LANDSCAPE_MARGIN:I

.field private static final ACTION_BAR_PORTRAIT_MARGIN:I

.field private static final BUTTON_TEXT_STROKE_COLOR:I

.field private static final BUTTON_TEXT_STROKE_WIDTH:I

.field public static final COLOR_TUNE_SLIDE_PRESET_TYPE:I = 0x0

.field public static final COLOR_TUNE_SLIDE_TONE_TYPE:I = 0x1

.field private static final CONTRAST:I = 0x2

.field private static final HIGHLIGHT:I = 0x4

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

.field private static final NUM_OF_COLOR_TUNE_SLIDER:I = 0x6

.field private static final PRESET_SLIDE_NUM_OF_STEP:I

.field private static final PRESET_SLIDE_VALUE_OFFSET:I

.field private static final SATURATION:I = 0x3

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHADOW:I = 0x5

.field private static final SLIDE_AREA:I

.field private static final SLIDE_CENTER_DEVIDER_HEIGHT:I

.field private static final SLIDE_CENTER_DEVIDER_WIDTH:I

.field private static final SLIDE_FONT_SIZE:I

.field private static final SLIDE_GROUP_POS_X:I

.field private static final SLIDE_GROUP_POS_Y:I

.field private static final SLIDE_GROUP_WIDTH:I

.field private static final SLIDE_HEIGHT:I

.field private static final SLIDE_POS_X:I

.field private static final SLIDE_RIGHT_PADDING:I

.field private static final SLIDE_TEXT_HEIGHT:I

.field private static final SLIDE_TEXT_MAX_WIDTH:I

.field private static final SLIDE_TEXT_STROKE_COLOR:I

.field private static final SLIDE_TEXT_STROKE_WIDTH:I

.field private static final SLIDE_TEXT_TOP_MARGIN:I

.field private static final SLIDE_TOP_PADDING:I

.field private static final SLIDE_TOUCH_AREA_HEIGHT:I

.field private static final SLIDE_TOUCH_AREA_WIDTH:I

.field private static final SLIDE_WIDTH:I

.field private static final SLIDE_WIDTH_INTERVAL:I

.field private static final TAG:Ljava/lang/String; = "ProColorTuneSettingMenu"

.field private static final TEMPERATURE:I = 0x0

.field private static final TINT:I = 0x1

.field private static final TONE_SLIDE_NUM_OF_STEP:I

.field private static final TONE_SLIDE_VALUE_OFFSET:I


# instance fields
.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

.field private mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

.field private mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

.field private mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

.field private mColorTuneSlideType:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

.field private mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

.field private mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mResetButton:Lcom/samsung/android/glview/GLButton;

.field private mSaveButton:Lcom/samsung/android/glview/GLButton;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSliderCenter:Lcom/samsung/android/glview/GLView;

.field private mSliderText:[Lcom/samsung/android/glview/GLText;

.field private mText:[Ljava/lang/String;

.field private mToneSlider:[Lcom/samsung/android/glview/GLSlider;

.field private mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f0c0027

    const v2, 0x7f0a0023

    .line 50
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    .line 51
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    .line 52
    const v0, 0x7f090076

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    .line 53
    const v0, 0x7f090077

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    .line 54
    const v0, 0x7f090071

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    .line 55
    const v0, 0x7f0902f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    .line 56
    const v0, 0x7f0902ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    .line 57
    const v0, 0x7f0902ee

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_FONT_SIZE:I

    .line 58
    const v0, 0x7f0902ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    .line 59
    const v0, 0x7f09007f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    .line 60
    const v0, 0x7f09007a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    .line 61
    const v0, 0x7f0902f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    .line 62
    const v0, 0x7f0902f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    .line 63
    const v0, 0x7f09007c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_X:I

    .line 64
    const v0, 0x7f0902fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    .line 65
    const v0, 0x7f0902f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_RIGHT_PADDING:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    .line 67
    const v0, 0x7f09007b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    .line 68
    const v0, 0x7f0902fd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    .line 69
    const v0, 0x7f0902fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    .line 70
    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_NUM_OF_STEP:I

    .line 71
    const v0, 0x7f0a001f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    .line 72
    const v0, 0x7f0a0021

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_NUM_OF_STEP:I

    .line 73
    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    .line 74
    const v0, 0x7f090079

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DEVIDER_WIDTH:I

    .line 75
    const v0, 0x7f090078

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DEVIDER_HEIGHT:I

    .line 76
    const v0, 0x7f09007e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_MAX_WIDTH:I

    .line 77
    const v0, 0x7f09007d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    .line 78
    const v0, 0x7f0902fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    .line 79
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_WIDTH:I

    .line 80
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_COLOR:I

    .line 81
    const v0, 0x7f0a0020

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    .line 82
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_AREA:I

    .line 83
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    .line 84
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 25
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 119
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v11, v2

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 92
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    .line 121
    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 126
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0a000e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    const v4, 0x7f0a000f

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 130
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f02028d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080184

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    .line 139
    .local v22, "resetText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 140
    .local v24, "saveText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v23

    .line 141
    .local v23, "resetTextWidth":F
    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v6

    .line 143
    .local v6, "saveTextWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0c0024

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 150
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v6

    sub-float v9, v2, v23

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, v23

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0c0024

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 158
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v4, v23

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float v5, v5, v23

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v4, v4

    add-float v4, v4, v23

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float v5, v5, v23

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v4, v23

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float v5, v5, v23

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v4, v4

    add-float v4, v4, v23

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float v5, v5, v23

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 180
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 187
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    .line 188
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    .line 189
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    .line 190
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    .line 191
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    .line 192
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080136

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08015a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801cf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 201
    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 204
    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 207
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    const/4 v2, 0x6

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v21

    add-int/2addr v3, v4

    int-to-float v9, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v10, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_RIGHT_PADDING:I

    add-int/2addr v3, v4

    int-to-float v11, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v7, v2, v21

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    new-instance v7, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v9, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    int-to-float v10, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    int-to-float v11, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    int-to-float v12, v3

    const v13, 0x7f020169

    sget v14, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_NUM_OF_STEP:I

    const/4 v15, 0x1

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    aput-object v7, v2, v21

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    aget-object v4, v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 217
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPresetSliderListener(I)V

    .line 219
    new-instance v7, Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DEVIDER_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DEVIDER_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DEVIDER_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DEVIDER_HEIGHT:I

    int-to-float v12, v2

    const v13, 0x7f020169

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v11

    .line 223
    .local v11, "sliderTextWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    aget-object v13, v3, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v14, v3

    const v3, 0x7f0c0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v7, v2, v21

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 227
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    add-float/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 232
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v21

    add-int/2addr v3, v4

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v15, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_RIGHT_PADDING:I

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v16, v0

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v12, v2, v21

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    new-instance v12, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    int-to-float v15, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    int-to-float v0, v3

    move/from16 v16, v0

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    int-to-float v0, v3

    move/from16 v17, v0

    const v18, 0x7f020169

    sget v19, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_NUM_OF_STEP:I

    const/16 v20, 0x1

    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    aput-object v12, v2, v21

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mText:[Ljava/lang/String;

    aget-object v4, v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v21

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 251
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setToneSliderListener(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 207
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 169
    .end local v11    # "sliderTextWidth":F
    .end local v21    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_LANDSCAPE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v4, v4, v23

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    sub-float v5, v5, v23

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float v4, v4, v23

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->ACTION_BAR_BUTTON_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float v5, v5, v23

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 230
    .restart local v11    # "sliderTextWidth":F
    .restart local v21    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v21

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v21

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 258
    .end local v11    # "sliderTextWidth":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 263
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 264
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 267
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->isTtsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)[Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->speakTtsString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)[Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method private isTtsEnabled()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPresetSliderListener(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, p1

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$1;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 500
    return-void
.end method

.method private setToneSliderListener(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, p1

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$2;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 542
    return-void
.end method

.method private speakTtsString(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsString"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 546
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 272
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingCancel()V

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    .line 303
    :goto_0
    return v0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v2, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v0

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 296
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingReset()V

    goto :goto_0

    .line 288
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-ne v2, v0, :cond_1

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v2, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v0

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_1

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingSave()V

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 303
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPreviewTouchEnabled(Z)V

    .line 375
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 380
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 385
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 399
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 395
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 404
    sparse-switch p1, :sswitch_data_0

    .line 419
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 406
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingCancel()V

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    goto :goto_0

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onProColorTuneListSelect(I)V
    .locals 1
    .param p1, "selectId"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;->onColorTuneSettingListSelect(I)V

    .line 311
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getItem(I)Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->setDim(Z)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->refreshColorTuneItems()V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 434
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 441
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPreviewTouchEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 443
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 448
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 453
    return-void
.end method

.method public setColorTuneSettingListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    .line 315
    return-void
.end method

.method public setColorTuneSettingMenuBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    .line 319
    return-void
.end method

.method public setColorTuneSettingSlideType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 322
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    .line 324
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setColorTuneSettingSliderBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    .line 336
    return-void
.end method

.method public setResetButtonDim(Z)V
    .locals 1
    .param p1, "isDim"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 340
    return-void
.end method

.method public setSaveButtonDim(Z)V
    .locals 1
    .param p1, "isDim"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 344
    return-void
.end method

.method public updateColorTuneSlider([I)V
    .locals 7
    .param p1, "values"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 347
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v1

    aget v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v3

    aget v1, p1, v3

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v4

    aget v1, p1, v4

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v5

    aget v1, p1, v5

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v6

    aget v1, p1, v6

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-ne v0, v3, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v1

    aget v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v3

    aget v1, p1, v3

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v4

    aget v1, p1, v4

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v5

    aget v1, p1, v5

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v6

    aget v1, p1, v6

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0
.end method
