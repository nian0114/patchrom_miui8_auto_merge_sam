.class public Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ProCustomSaveListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$1;,
        Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_MIN_HEIGHT:I

.field private static final LIST_ITEM_TEXT_FONT_SIZE:I

.field private static final LIST_ITEM_TEXT_SIDE_MARGIN:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_SCROLL_PADDING:I

.field private static final MENU_BOTTOM_PADDING:I

.field private static final MENU_BUTTON_FONT_SIZE:I

.field private static final MENU_BUTTON_HEIGHT:I

.field private static final MENU_BUTTON_PADING:I

.field private static final MENU_BUTTON_TEXT_COLOR:I

.field private static final MENU_PARAGRAPH_MARGIN:I

.field private static final MENU_SIDE_PADDING:I

.field private static final MENU_TITLE_FONT_SIZE:I

.field private static final MENU_TITLE_TEXT_COLOR:I

.field private static final MENU_TOP_PADDING:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TITLE_SIDE_PADDING:I


# instance fields
.field private mCancelButton:Lcom/samsung/android/glview/GLButton;

.field protected mCustomSaveMenuSelectListener:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;

.field private mItemHeight:F

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/CustomItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemResourceType:I

.field private mList:Lcom/samsung/android/glview/GLList;

.field private mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

.field private mOrientation:I

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSaveButton:Lcom/samsung/android/glview/GLButton;

.field private mTitle:Lcom/samsung/android/glview/GLText;

.field private mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_WIDTH:I

    .line 50
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    .line 51
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f090310

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_WIDTH:I

    .line 52
    const v0, 0x7f090311

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_SIDE_PADDING:I

    .line 53
    const v0, 0x7f0902aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TOP_PADDING:I

    .line 54
    const v0, 0x7f090307

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BOTTOM_PADDING:I

    .line 55
    const v0, 0x7f09030f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_PARAGRAPH_MARGIN:I

    .line 56
    const v0, 0x7f090313

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->TITLE_SIDE_PADDING:I

    .line 57
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    .line 58
    const v0, 0x7f09030c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_MIN_HEIGHT:I

    .line 59
    const v0, 0x7f090104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_TEXT_SIDE_MARGIN:I

    .line 60
    const v0, 0x7f09030a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_PADING:I

    .line 61
    const v0, 0x7f090309

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_HEIGHT:I

    .line 62
    const v0, 0x7f09030b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_TEXT_FONT_SIZE:I

    .line 63
    const v0, 0x7f090312

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TITLE_FONT_SIZE:I

    .line 64
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TITLE_TEXT_COLOR:I

    .line 65
    const v0, 0x7f090308

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_FONT_SIZE:I

    .line 66
    const v0, 0x7f0c0021

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_TEXT_COLOR:I

    .line 67
    const v0, 0x7f0901d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_SCROLL_PADDING:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 9
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
    .line 85
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

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemResourceType:I

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemList:Landroid/util/SparseArray;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->menuPadding:Landroid/graphics/Rect;

    .line 87
    iput-object p6, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemHeight:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemResourceType:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->refreshView(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/CustomItem;
    .locals 4

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, "size":I
    const/4 v1, 0x0

    .line 188
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    check-cast v1, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    .line 191
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 196
    :goto_1
    return-object v3

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 23

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TITLE_FONT_SIZE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v22

    .line 202
    .local v22, "titleHeight":F
    sget v3, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TOP_PADDING:I

    int-to-float v3, v3

    add-float v3, v3, v22

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_PARAGRAPH_MARGIN:I

    int-to-float v4, v4

    add-float v21, v3, v4

    .line 203
    .local v21, "titleGroupHeight":F
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v17

    .line 205
    .local v17, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_TEXT_FONT_SIZE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v18

    .line 206
    .local v18, "itemHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemHeight:F

    cmpg-float v3, v3, v18

    if-gez v3, :cond_0

    .line 207
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemHeight:F

    .line 203
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 210
    .end local v17    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v18    # "itemHeight":F
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemHeight:F

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_MIN_HEIGHT:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 211
    sget v3, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_MIN_HEIGHT:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemHeight:F

    .line 213
    :cond_2
    new-instance v2, Lcom/samsung/android/glview/GLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLTitleDecorator;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    const v4, 0x7f02008e

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLTitleDecorator;->setNinePatchBackground(I)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->menuPadding:Landroid/graphics/Rect;

    .line 217
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_WIDTH:I

    int-to-float v6, v6

    move/from16 v7, v21

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 219
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->TITLE_SIDE_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TOP_PADDING:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v7, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TITLE_FONT_SIZE:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v7

    sget v10, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_TITLE_TEXT_COLOR:I

    const/4 v11, 0x0

    move/from16 v7, v22

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    .line 221
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 226
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLTitleDecorator;->setTitle(Lcom/samsung/android/glview/GLView;)V

    .line 230
    new-instance v2, Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_SIDE_PADDING:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float v5, v5, v21

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sub-float v7, v7, v21

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v4, 0x7f02028f

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_SCROLL_PADDING:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLList;->setScrollBarPadding(F)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$1;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLTitleDecorator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f0801bc

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 239
    .local v20, "saveText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f080105

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 241
    .local v15, "cancelText":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_FONT_SIZE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v19

    .line 242
    .local v19, "saveButtonWidth":F
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_FONT_SIZE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v14

    .line 244
    .local v14, "cancelButtonWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_SIDE_PADDING:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_PARAGRAPH_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 247
    .local v2, "buttonGroup":Lcom/samsung/android/glview/GLViewGroup;
    new-instance v3, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_HEIGHT:I

    int-to-float v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v7, 0x7f0c001e

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v7, v19

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_FONT_SIZE:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v6

    mul-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_TEXT_COLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIIZZ)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setForcedClipping(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 256
    new-instance v3, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_HEIGHT:I

    int-to-float v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v7, 0x7f0c001e

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v7, v14

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_FONT_SIZE:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v6

    mul-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_TEXT_COLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIIZZ)V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setForcedClipping(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 265
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_PADING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 273
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLTitleDecorator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 281
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mOrientation:I

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_PARAGRAPH_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BOTTOM_PADDING:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLTitleDecorator;->setHeight(F)V

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->refreshMenuPosition()V

    .line 289
    return-void

    .line 224
    .end local v2    # "buttonGroup":Lcom/samsung/android/glview/GLViewGroup;
    .end local v14    # "cancelButtonWidth":F
    .end local v15    # "cancelText":Ljava/lang/String;
    .end local v19    # "saveButtonWidth":F
    .end local v20    # "saveText":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_1

    .line 269
    .restart local v2    # "buttonGroup":Lcom/samsung/android/glview/GLViewGroup;
    .restart local v14    # "cancelButtonWidth":F
    .restart local v15    # "cancelText":Ljava/lang/String;
    .restart local v19    # "saveButtonWidth":F
    .restart local v20    # "saveText":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCancelButton:Lcom/samsung/android/glview/GLButton;

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v19

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->MENU_BUTTON_PADING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v14

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2
.end method

.method private refreshMenuPosition()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 292
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 309
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshView(I)V
    .locals 4
    .param p1, "commandId"    # I

    .prologue
    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "size":I
    const/4 v1, 0x0

    .line 315
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 317
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    check-cast v1, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    .line 318
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setSelected(Z)V

    .line 321
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->refreshView()V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->hideMenu()V

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/CustomItem;

    move-result-object v0

    .line 95
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCustomSaveMenuSelectListener:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->getCommandId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;->onCustomSaveMenuSelected(I)V

    .line 100
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->hideMenu()V

    .line 103
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 157
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 162
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 108
    sparse-switch p1, :sswitch_data_0

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 110
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->hideMenu()V

    goto :goto_1

    .line 113
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->hideMenu()V

    goto :goto_0

    .line 118
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->hideMenu()V

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mOrientation:I

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->refreshMenuPosition()V

    .line 132
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->refreshMenuPosition()V

    .line 167
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/CustomItem;

    move-result-object v0

    .line 173
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->requestFocus()Z

    .line 177
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    return-void
.end method

.method public setCustomSaveMenuSelectListener(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;)V
    .locals 0
    .param p1, "CustomSaveMenuSelectListener"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCustomSaveMenuSelectListener:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;

    .line 136
    return-void
.end method
