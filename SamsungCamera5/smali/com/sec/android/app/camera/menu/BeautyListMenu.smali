.class public Lcom/sec/android/app/camera/menu/BeautyListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "BeautyListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final BEAUTY_ITEM_HEIGHT:I

.field private static final BEAUTY_ITEM_LEFT_MARGIN:I

.field private static final BEAUTY_ITEM_MARGIN:I

.field private static final BEAUTY_ITEM_POS_X:I

.field private static final BEAUTY_ITEM_WIDTH:I

.field private static final HELPTEXT_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private static final HELPTEXT_TIMEOUT:I = 0x1b58

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERTICAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERTICAL:F

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final MENU_HEIGHT:F

.field private static final MENU_POS_X:F

.field private static final MENU_POS_X_FOR_MOBILE_KEYBOARD:F

.field private static final MENU_WIDTH:F

.field private static final NUM_OF_BEAUTY_ITEM:I

.field private static final RATIO_4_3_MARGIN:I

.field private static final SCREEN_HEIGHT:I

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final SLIDER_GROUP_POS_X:I

.field private static final SLIDER_GROUP_POS_Y:I

.field private static final SLIDER_GROUP_WIDTH:I

.field private static final SLIDER_HEIGHT:I

.field private static final SLIDER_LEVEL_TEXT_COLOR:I

.field private static final SLIDER_LEVEL_TEXT_SIZE:I

.field private static final SLIDER_LEVEL_TEXT_STROKE_COLOR:I

.field private static final SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

.field private static final SLIDER_POS_X:I

.field private static final SLIDER_POS_Y:I

.field private static final SLIDER_TEXT_HEIGHT:I

.field private static final SLIDER_TEXT_POS_X:I

.field private static final SLIDER_TEXT_POS_Y:I

.field private static final SLIDER_TEXT_WIDTH:I

.field private static final SLIDER_WIDTH:I

.field private static final SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

.field private static final SPOT_LIGHT_IMAGE_POS_X:I

.field private static final SPOT_LIGHT_IMAGE_SIZE:I

.field private static final SPOT_LIGHT_INDICATOR_RIGHT_MARGIN:I

.field private static final SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

.field private static final SPOT_LIGHT_INDICATOR_TEXT_SIZE:I

.field private static final SPOT_LIGHT_SLIDER_DIVIDER_SIZE:I

.field private static final SPOT_LIGHT_SLIDER_GROUP_HEIGHT:I

.field private static final SPOT_LIGHT_SLIDER_GROUP_WIDTH:I

.field private static final SPOT_LIGHT_SLIDER_GROUP_Y:I

.field private static final SPOT_LIGHT_SLIDER_POS_X:I

.field private static final TAG:Ljava/lang/String; = "BeautyListMenu"


# instance fields
.field private mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private final mHideShapeCorrectionText:Ljava/lang/Runnable;

.field private mIsShapeCorrectionTextHidedByTimeOut:Z

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/BeautyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLevelText:Lcom/samsung/android/glview/GLText;

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSpotLightImage:Lcom/samsung/android/glview/GLImage;

.field private mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

.field private mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

.field private mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f0c0010

    const v4, 0x7f0a0023

    const v3, 0x7f0901be

    const/4 v0, 0x1

    .line 57
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    .line 58
    const v1, 0x7f0902c3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_WIDTH:F

    .line 59
    const v1, 0x7f090024

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X:F

    .line 60
    const v1, 0x7f090025

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X_FOR_MOBILE_KEYBOARD:F

    .line 62
    const v1, 0x7f0902c4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_POS_X:I

    .line 63
    const v1, 0x7f0902ae

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:I

    .line 64
    const v1, 0x7f0902ad

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:I

    .line 66
    const v1, 0x7f0902b7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_POS_X:I

    .line 67
    const v1, 0x7f0902b8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_POS_Y:I

    .line 68
    const v1, 0x7f0902b9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_WIDTH:I

    .line 69
    const v1, 0x7f0902bf

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_POS_X:I

    .line 70
    const v1, 0x7f090022

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_POS_Y:I

    .line 71
    const v1, 0x7f0902c2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_WIDTH:I

    .line 72
    const v1, 0x7f0902ba

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_HEIGHT:I

    .line 73
    const v1, 0x7f0902bd

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_SIZE:I

    .line 74
    const v1, 0x7f0c0011

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    .line 75
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    .line 76
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    .line 77
    const v1, 0x7f0902bc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_POS_X:I

    .line 78
    const v1, 0x7f090021

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_POS_Y:I

    .line 79
    const v1, 0x7f0902be

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_WIDTH:I

    .line 80
    const v1, 0x7f0902bb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_HEIGHT:I

    .line 82
    const v1, 0x7f0902e2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_GROUP_WIDTH:I

    .line 83
    const v1, 0x7f0902e1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_GROUP_HEIGHT:I

    .line 84
    const v1, 0x7f090023

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_GROUP_Y:I

    .line 85
    const v1, 0x7f0902e7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_RIGHT_MARGIN:I

    .line 86
    const v1, 0x7f0902e6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    .line 87
    const v1, 0x7f0902e0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:I

    .line 88
    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_POS_X:I

    .line 89
    const v1, 0x7f0902e8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:I

    .line 90
    const v1, 0x7f0902e3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    .line 91
    const v1, 0x7f0902e5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:I

    .line 92
    const v1, 0x7f0902e4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_POS_X:I

    .line 94
    const v1, 0x7f0902c1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 95
    const v1, 0x7f0902c0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 97
    const v1, 0x7f0901d7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    .line 98
    const v1, 0x7f0901d8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 99
    const v1, 0x7f0901d4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    .line 100
    const v1, 0x7f0901d5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    .line 101
    const v1, 0x7f0902d6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 102
    const v1, 0x7f0901bf

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    .line 103
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_Y:F

    .line 104
    const v1, 0x7f0902eb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SIZE:F

    .line 105
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_STROKE_WIDTH:I

    .line 106
    const v1, 0x7f0a002f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SET_SHADOW:Z

    .line 107
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 108
    const v0, 0x7f090158

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->RATIO_4_3_MARGIN:I

    .line 110
    const v0, 0x7f0901d6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELPTEXT_MARGIN_FOR_MOBILE_KEYBOARD:I

    .line 112
    const v0, 0x7f0a0037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->NUM_OF_BEAUTY_ITEM:I

    .line 113
    sget v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->NUM_OF_BEAUTY_ITEM:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_HEIGHT:F

    .line 114
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_LEFT_MARGIN:I

    .line 115
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_MARGIN:I

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 14
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
    .line 145
    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    .line 123
    new-instance v1, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mHideShapeCorrectionText:Ljava/lang/Runnable;

    .line 140
    new-instance v1, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;Lcom/sec/android/app/camera/menu/BeautyListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 141
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    .line 147
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X:F

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 153
    :goto_0
    new-instance v1, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    sget-boolean v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 160
    const/4 v13, 0x0

    .line 162
    .local v13, "ratio_margin":I
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    sget v13, Lcom/sec/android/app/camera/menu/BeautyListMenu;->RATIO_4_3_MARGIN:I

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    int-to-float v4, v13

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_Y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    int-to-float v4, v13

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->initSliderMenu()V

    .line 185
    new-instance v1, Lcom/samsung/android/glview/GLGridList;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_LEFT_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_MARGIN:I

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setInternalFocus(Z)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    const/16 v2, 0x81

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    const/16 v2, 0x71

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 197
    return-void

    .line 151
    .end local v13    # "ratio_margin":I
    :cond_1
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X_FOR_MOBILE_KEYBOARD:F

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_0

    .line 174
    .restart local v13    # "ratio_margin":I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    int-to-float v4, v13

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELPTEXT_MARGIN_FOR_MOBILE_KEYBOARD:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_Y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELPTEXT_MARGIN_FOR_MOBILE_KEYBOARD:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    int-to-float v4, v13

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELPTEXT_MARGIN_FOR_MOBILE_KEYBOARD:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->MENU_POS_X_FOR_MOBILE_KEYBOARD:F

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto/16 :goto_1
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/BeautyListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateLevel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->speakBeautyLevel(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateSpotLightPosition(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->speakSpotLightPosition(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:I

    return v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .locals 4

    .prologue
    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "size":I
    const/4 v0, 0x0

    .line 369
    .local v0, "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    .line 371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .end local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .line 373
    .restart local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 377
    :goto_1
    return-object v3

    .line 371
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCurrentSpotLightPosition()I
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 382
    const-string v0, "BeautyListMenu"

    const-string v1, "mCameraContext is null, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentStep(I)I
    .locals 3
    .param p1, "beautyMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    .line 391
    const-string v1, "BeautyListMenu"

    const-string v2, "mCameraContext is null, so return"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return v0

    .line 394
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v0

    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v0

    goto :goto_0

    .line 400
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v0

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initSliderMenu()V
    .locals 18

    .prologue
    .line 409
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_POS_Y:I

    int-to-float v4, v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_GROUP_WIDTH:I

    int-to-float v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 410
    new-instance v1, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_WIDTH:I

    int-to-float v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f020169

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f080060

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f020084

    const v3, 0x7f020085

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLView;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 429
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_POS_Y:I

    int-to-float v4, v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_WIDTH:I

    int-to-float v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TEXT_HEIGHT:I

    int-to-float v6, v6

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_SIZE:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setCenterPivot(Z)V

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 442
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_GROUP_Y:I

    int-to-float v4, v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_GROUP_WIDTH:I

    int-to-float v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 444
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:I

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_WIDTH:I

    int-to-float v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f020169

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v2, 0x7f080060

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v2, 0x7f020154

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setDivider(III)V

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v2, 0x7f020084

    const v3, 0x7f020085

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->expandTouchAreaFromCenter(FF)V

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 467
    .local v7, "leftText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 468
    .local v14, "rightText":Ljava/lang/String;
    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v5

    .line 469
    .local v5, "leftTextWidth":F
    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v12

    .line 471
    .local v12, "rightTextWidth":F
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_POS_X:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    int-to-float v6, v6

    sget v8, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_POS_X:I

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 479
    new-instance v8, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_POS_X:I

    int-to-float v1, v1

    sub-float/2addr v1, v12

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    int-to-float v2, v2

    sub-float v10, v1, v2

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:I

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    int-to-float v13, v1

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:I

    int-to-float v15, v1

    sget v16, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:I

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_POS_X:I

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:I

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    add-int/2addr v4, v6

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:I

    sget v6, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_BOTTOM_MARGIN:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 487
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v6, 0x7f020006

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setCenterPivot(Z)V

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 498
    return-void
.end method

.method private refreshSlider(I)V
    .locals 9
    .param p1, "beautyMode"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 501
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 503
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    if-ne p1, v8, :cond_3

    .line 506
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 507
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 513
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v2

    .line 514
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v2, :cond_2

    .line 515
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLSlider;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 518
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 519
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->getCurrentStep(I)I

    move-result v1

    .line 520
    .local v1, "currentStep":I
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 521
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 522
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 524
    if-ne p1, v8, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->getCurrentSpotLightPosition()I

    move-result v0

    .line 526
    .local v0, "currentPosition":I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateSpotLightPosition(I)V

    .line 528
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 529
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setVisibility(I)V

    goto :goto_0

    .line 509
    .end local v0    # "currentPosition":I
    .end local v1    # "currentStep":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 510
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private speakBeautyLevel(I)V
    .locals 4
    .param p1, "step"    # I

    .prologue
    const v3, 0x7f080060

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 549
    :pswitch_0
    const-string v0, ""

    .line 552
    .local v0, "ttsMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 553
    return-void

    .line 537
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800fa

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800f8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 543
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800f9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 546
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800fb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto/16 :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private speakSpotLightPosition(I)V
    .locals 4
    .param p1, "step"    # I

    .prologue
    const v2, 0x7f0800fc

    const v3, 0x7f080060

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 566
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f08010f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "ttsMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 570
    return-void

    .line 559
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080168

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 562
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0801b8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateLevel(I)V
    .locals 5
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 574
    const-string v0, "BeautyListMenu"

    const-string v1, "mCameraContext is null, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 579
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightLevel(I)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateSpotLightPosition(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightPosition(I)V

    .line 602
    packed-switch p1, :pswitch_data_0

    .line 611
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 614
    :goto_0
    return-void

    .line 604
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 607
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 206
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 207
    return-void
.end method

.method public hideShapeCorrectionHelpText()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 223
    const/16 v1, 0x81

    if-ne p1, v1, :cond_1

    .line 224
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->refreshSlider(I)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/16 v1, 0x71

    if-ne p1, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v0

    .line 228
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x1967

    if-ne v1, v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    .line 232
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 234
    const v1, 0x7f080140

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->showShapeCorrectionHelpText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    .line 333
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 338
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 343
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    sparse-switch p1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 245
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 254
    sparse-switch p1, :sswitch_data_0

    .line 263
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 256
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideMenu()V

    goto :goto_0

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    sget v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->refreshSlider(I)V

    .line 348
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v0

    .line 354
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->requestFocus()Z

    .line 358
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 363
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 286
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 288
    :pswitch_1
    const-string v4, "Z075"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 289
    .local v0, "cv_beauty_level":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 292
    .end local v0    # "cv_beauty_level":Landroid/content/ContentValues;
    :pswitch_2
    const-string v4, "Z072"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 293
    .local v1, "cv_large_eyes":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 296
    .end local v1    # "cv_large_eyes":Landroid/content/ContentValues;
    :pswitch_3
    const-string v4, "Z073"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 297
    .local v2, "cv_slim_face":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 300
    .end local v2    # "cv_slim_face":Landroid/content/ContentValues;
    :pswitch_4
    const-string v4, "Z074"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 301
    .local v3, "cv_spot_light":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public showShapeCorrectionHelpText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 318
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mHideShapeCorrectionText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mHideShapeCorrectionText:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    :cond_2
    return-void
.end method
