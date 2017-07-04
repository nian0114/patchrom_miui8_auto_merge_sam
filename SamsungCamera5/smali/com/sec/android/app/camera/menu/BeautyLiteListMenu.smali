.class public Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "BeautyLiteListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final BEAUTY_ITEM_HEIGHT:I

.field private static final BEAUTY_ITEM_LEFT_MARGIN:I

.field private static final BEAUTY_ITEM_MARGIN:I

.field private static final BEAUTY_ITEM_POS_X:I

.field private static final BEAUTY_ITEM_WIDTH:I

.field private static final MENU_POS_X:F

.field private static final MENU_POS_X_FOR_MOBILE_KEYBOARD:F

.field private static final MENU_WIDTH:F

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

.field private static final TAG:Ljava/lang/String; = "BeautyListMenu"


# instance fields
.field private mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

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

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SCREEN_HEIGHT:I

    .line 55
    const v0, 0x7f0902c3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_WIDTH:F

    .line 56
    const v0, 0x7f090024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_POS_X:F

    .line 57
    const v0, 0x7f090025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_POS_X_FOR_MOBILE_KEYBOARD:F

    .line 59
    const v0, 0x7f0902c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_POS_X:I

    .line 60
    const v0, 0x7f0902ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_WIDTH:I

    .line 61
    const v0, 0x7f0902ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_HEIGHT:I

    .line 63
    const v0, 0x7f0902b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_GROUP_POS_X:I

    .line 64
    const v0, 0x7f0902b8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_GROUP_POS_Y:I

    .line 65
    const v0, 0x7f0902b9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_GROUP_WIDTH:I

    .line 66
    const v0, 0x7f0902bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_POS_X:I

    .line 67
    const v0, 0x7f090022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_POS_Y:I

    .line 68
    const v0, 0x7f0902c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_WIDTH:I

    .line 69
    const v0, 0x7f0902ba

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_HEIGHT:I

    .line 70
    const v0, 0x7f0902bd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_SIZE:I

    .line 71
    const v0, 0x7f0c0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    .line 72
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    .line 73
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    .line 74
    const v0, 0x7f0902bc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_POS_X:I

    .line 75
    const v0, 0x7f090021

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_POS_Y:I

    .line 76
    const v0, 0x7f0902be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_WIDTH:I

    .line 77
    const v0, 0x7f0902bb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_HEIGHT:I

    .line 79
    const v0, 0x7f0902c1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 80
    const v0, 0x7f0902c0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 82
    const v0, 0x7f0902df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_LEFT_MARGIN:I

    .line 83
    const v0, 0x7f09001e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_MARGIN:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
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
    .line 97
    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 92
    new-instance v1, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 93
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mItemList:Landroid/util/SparseArray;

    .line 99
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_POS_X:F

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 106
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->initSliderMenu()V

    .line 108
    new-instance v1, Lcom/samsung/android/glview/GLGridList;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_LEFT_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_MARGIN:I

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setInternalFocus(Z)V

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    const/16 v2, 0x81

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 119
    return-void

    .line 103
    :cond_0
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_POS_X_FOR_MOBILE_KEYBOARD:F

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->MENU_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->updateLevel(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->speakBeautyLevel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .locals 4

    .prologue
    .line 225
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    .line 227
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 228
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .line 229
    .local v0, "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    .end local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :goto_1
    return-object v0

    .line 227
    .restart local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCurrentStep(I)I
    .locals 3
    .param p1, "beautyMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    .line 238
    const-string v1, "BeautyListMenu"

    const-string v2, "mCameraContext is null, so return"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return v0

    .line 241
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v0

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v0

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initSliderMenu()V
    .locals 10

    .prologue
    .line 254
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 255
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020169

    const/16 v7, 0x9

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f080060

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    sget v1, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setClipping(Z)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 274
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_SIZE:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 285
    return-void
.end method

.method private refreshSlider(I)V
    .locals 7
    .param p1, "beautyMode"    # I

    .prologue
    const/4 v6, 0x0

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 290
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v1

    .line 291
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v1, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLSlider;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 296
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->getCurrentStep(I)I

    move-result v0

    .line 297
    .local v0, "currentStep":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method private speakBeautyLevel(I)V
    .locals 4
    .param p1, "step"    # I

    .prologue
    const v3, 0x7f080060

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 315
    const-string v0, ""

    .line 318
    .local v0, "ttsMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 319
    return-void

    .line 306
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_0
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

    .line 307
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 309
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_1
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

    .line 310
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 312
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_2
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

    .line 313
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLevel(I)V
    .locals 5
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 323
    const-string v0, "BeautyListMenu"

    const-string v1, "mCameraContext is null, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 127
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 128
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 132
    const/16 v0, 0x81

    if-ne p1, v0, :cond_0

    .line 133
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->refreshSlider(I)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 194
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 199
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 142
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 139
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

    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 153
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->hideMenu()V

    goto :goto_0

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->refreshSlider(I)V

    .line 204
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v0

    .line 210
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->requestFocus()Z

    .line 214
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 219
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 169
    :pswitch_0
    const-string v3, "Z075"

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 170
    .local v0, "cv_beauty_level":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 173
    .end local v0    # "cv_beauty_level":Landroid/content/ContentValues;
    :pswitch_1
    const-string v3, "Z072"

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 174
    .local v1, "cv_large_eyes":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 177
    .end local v1    # "cv_large_eyes":Landroid/content/ContentValues;
    :pswitch_2
    const-string v3, "Z073"

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 178
    .local v2, "cv_slim_face":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
