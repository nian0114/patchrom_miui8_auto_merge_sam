.class public Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ProCustomSettingListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$1;,
        Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_MIN_HEIGHT:I

.field private static final LIST_ITEM_TEXT_FONT_SIZE:I

.field private static final LIST_ITEM_TEXT_SIDE_MARGIN:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_SCROLL_PADDING:I

.field private static final MENU_BACKGROUND_PADDING:I

.field private static final MENU_BOTTOM_PADDING:I

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
.field protected mCustomSettingMenuSelectListener:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;

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

.field private mTitle:Lcom/samsung/android/glview/GLText;

.field private mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_WIDTH:I

    .line 48
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    .line 49
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f090310

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_WIDTH:I

    .line 50
    const v0, 0x7f09011b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_BACKGROUND_PADDING:I

    .line 51
    const v0, 0x7f090311

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_SIDE_PADDING:I

    .line 52
    const v0, 0x7f0902aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TOP_PADDING:I

    .line 53
    const v0, 0x7f090307

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_BOTTOM_PADDING:I

    .line 54
    const v0, 0x7f09030f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_PARAGRAPH_MARGIN:I

    .line 55
    const v0, 0x7f090313

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->TITLE_SIDE_PADDING:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_WIDTH:I

    .line 57
    const v0, 0x7f09030c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_MIN_HEIGHT:I

    .line 58
    const v0, 0x7f090104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_TEXT_SIDE_MARGIN:I

    .line 59
    const v0, 0x7f09030b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_TEXT_FONT_SIZE:I

    .line 60
    const v0, 0x7f090312

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TITLE_FONT_SIZE:I

    .line 61
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TITLE_TEXT_COLOR:I

    .line 62
    const v0, 0x7f0901d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_SCROLL_PADDING:I

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
    .line 77
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

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemResourceType:I

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemList:Landroid/util/SparseArray;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    .line 79
    iput-object p6, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->init()V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemResourceType:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemResourceType:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemHeight:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method private init()V
    .locals 15

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TITLE_FONT_SIZE:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v14

    .line 180
    .local v14, "titleHeight":F
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TOP_PADDING:I

    int-to-float v0, v0

    add-float/2addr v0, v14

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_PARAGRAPH_MARGIN:I

    int-to-float v1, v1

    add-float v13, v0, v1

    .line 181
    .local v13, "titleGroupHeight":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v11

    .line 183
    .local v11, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v12

    .line 184
    .local v12, "itemHeight":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemHeight:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_0

    .line 185
    iput v12, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemHeight:F

    .line 181
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 188
    .end local v11    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v12    # "itemHeight":F
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemHeight:F

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_MIN_HEIGHT:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 189
    sget v0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_MIN_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemHeight:F

    .line 191
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLTitleDecorator;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->setNinePatchBackground(I)Z

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 197
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->TITLE_SIDE_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TOP_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TITLE_FONT_SIZE:I

    int-to-float v5, v5

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v5

    sget v8, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_TITLE_TEXT_COLOR:I

    const/4 v9, 0x0

    move v5, v14

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    .line 199
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->setTitle(Lcom/samsung/android/glview/GLView;)V

    .line 208
    new-instance v0, Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_SIDE_PADDING:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v13

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setScrollBarPadding(F)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    new-instance v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 219
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mOrientation:I

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->MENU_BOTTOM_PADDING:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->setHeight(F)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->refreshMenuPosition()V

    .line 227
    return-void

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_1
.end method

.method private refreshMenuPosition()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 230
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 247
    :goto_0
    return-void

    .line 233
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    sget v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

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

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->hideMenu()V

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 150
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 155
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 102
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 87
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->hideMenu()V

    goto :goto_1

    .line 90
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->hideMenu()V

    goto :goto_0

    .line 95
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->hideMenu()V

    goto :goto_0

    .line 85
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
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mOrientation:I

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->refreshMenuPosition()V

    .line 109
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->refreshMenuPosition()V

    .line 160
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    .line 166
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->requestFocus()Z

    .line 170
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 175
    return-void
.end method

.method public setCustomSettingMenuSelectListener(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;)V
    .locals 0
    .param p1, "CustomSettingMenuSelectListener"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCustomSettingMenuSelectListener:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;

    .line 113
    return-void
.end method

.method public setPositionDim(IZ)V
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    .line 117
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->isDim()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 118
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setDim(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public updateItemText(ILjava/lang/String;)V
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "updateText"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    .line 124
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->updateText(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method
