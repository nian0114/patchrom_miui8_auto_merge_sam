.class public Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "MotionPanoramaModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu$1;,
        Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_IMAGE_SIDE_MARGIN:I

.field private static final LIST_ITEM_IMAGE_WIDTH:I

.field private static final LIST_ITEM_MAX_WIDTH:I

.field private static final LIST_ITEM_MIN_HEIGHT:I

.field private static final LIST_ITEM_MIN_WIDTH:I

.field private static final LIST_ITEM_TEXT_FONT_SIZE:F

.field private static final LIST_ITEM_TEXT_SIDE_MARGIN:I

.field public static final LIST_SCROLL_PADDING:I

.field public static final MENU_ANCHOR_LINE_PADDING:I

.field public static final MENU_ANCHOR_PADDING:I

.field private static final MENU_BOTTOM_PADDING:I

.field private static final MENU_LEFT_MARGIN:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_FONT_SIZE:F

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mItemHeight:F

.field private mItemWidth:F

.field private mList:Lcom/samsung/android/glview/GLList;

.field private mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

.field private mOrientation:I

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mTitle:Lcom/samsung/android/glview/GLText;

.field private mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0901d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_SCROLL_PADDING:I

    .line 47
    const v0, 0x7f090117

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    .line 48
    const v0, 0x7f090116

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_LINE_PADDING:I

    .line 49
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_WIDTH:I

    .line 50
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    .line 51
    const v0, 0x7f09011e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_POS_X:I

    .line 52
    const v0, 0x7f09011f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_POS_Y:I

    .line 53
    const v0, 0x7f09011d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_LEFT_MARGIN:I

    .line 54
    const v0, 0x7f09011c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_BOTTOM_PADDING:I

    .line 55
    const v0, 0x7f090120

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_HEIGHT:I

    .line 56
    const v0, 0x7f090121

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_LEFT_PADDING:I

    .line 57
    const v0, 0x7f090123

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TOP_PADDING:I

    .line 58
    const v0, 0x7f090122

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TEXT_FONT_SIZE:F

    .line 59
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TEXT_COLOR:I

    .line 61
    const v0, 0x7f090108

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_TEXT_FONT_SIZE:F

    .line 62
    const v0, 0x7f090103

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_IMAGE_SIDE_MARGIN:I

    .line 63
    const v0, 0x7f090104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_TEXT_SIDE_MARGIN:I

    .line 64
    const v0, 0x7f090101

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_IMAGE_WIDTH:I

    .line 65
    const v0, 0x7f0902ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MIN_WIDTH:I

    .line 66
    const v0, 0x7f09011a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MIN_HEIGHT:I

    .line 67
    const v0, 0x7f09032a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MAX_WIDTH:I

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
    .line 83
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

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    .line 85
    iput-object p6, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->init()V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemHeight:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    .locals 5

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "size":I
    const/4 v1, 0x0

    .line 174
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v3

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v4, v0}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    check-cast v1, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;

    .line 178
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 183
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    :goto_1
    return-object v2

    .line 176
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 183
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    .restart local v2    # "item":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    goto :goto_1
.end method

.method private init()V
    .locals 14

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TEXT_FONT_SIZE:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    .line 189
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v11

    .line 191
    .local v11, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090108

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_IMAGE_SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_TEXT_SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_IMAGE_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v13, v0, v1

    .line 192
    .local v13, "itemWidth":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_0

    .line 193
    iput v13, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    .line 195
    :cond_0
    invoke-virtual {v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_TEXT_FONT_SIZE:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v12

    .line 196
    .local v12, "itemHeight":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemHeight:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_1

    .line 197
    iput v12, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemHeight:F

    .line 189
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 200
    .end local v11    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v12    # "itemHeight":F
    .end local v13    # "itemWidth":F
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MIN_WIDTH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 201
    sget v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MIN_WIDTH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    .line 205
    :cond_3
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemHeight:F

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MIN_HEIGHT:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 206
    sget v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MIN_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemHeight:F

    .line 209
    :cond_4
    new-instance v0, Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLTitleDecorator;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->setNinePatchBackground(I)Z

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    .line 213
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 215
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TOP_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TOP_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TEXT_FONT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    .line 217
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 222
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->setTitle(Lcom/samsung/android/glview/GLView;)V

    .line 226
    new-instance v0, Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_HEIGHT:I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setScrollBarPadding(F)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    new-instance v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 246
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLTitleDecorator;->getHeight()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_BOTTOM_PADDING:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTitleDecorator;->setHeight(F)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mMenuWrapper:Lcom/samsung/android/glview/GLTitleDecorator;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 250
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->refreshMenuPosition()V

    .line 251
    return-void

    .line 202
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    sget v1, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MAX_WIDTH:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 203
    sget v0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->LIST_ITEM_MAX_WIDTH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mItemWidth:F

    goto/16 :goto_1

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_2

    .line 240
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 241
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    goto :goto_3
.end method

.method private refreshMenuPosition()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 254
    const/4 v0, 0x0

    .local v0, "translateX":F
    const/4 v1, 0x0

    .line 256
    .local v1, "translateY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_5

    .line 257
    iget v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 327
    :goto_1
    return-void

    .line 259
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v1, v2, v3

    .line 262
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 263
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v1, v2

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 265
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    add-float v0, v2, v3

    .line 271
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v1, v2, v3

    .line 273
    cmpg-float v2, v1, v5

    if-gez v2, :cond_2

    .line 274
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    add-float/2addr v2, v1

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 276
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_0

    .line 281
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float v0, v2, v3

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float v1, v2, v3

    .line 284
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 285
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto/16 :goto_0

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float v2, v1, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 287
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    add-float v1, v2, v3

    goto/16 :goto_0

    .line 292
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float v1, v2, v3

    .line 295
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 296
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto/16 :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    sub-float v2, v1, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 298
    sget v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float v1, v2, v3

    goto/16 :goto_0

    .line 309
    :cond_5
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sget v4, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_1

    .line 312
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 315
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_1

    .line 319
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->MENU_LEFT_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 312
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

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

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->hideMenu()V

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 138
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 143
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 91
    sparse-switch p1, :sswitch_data_0

    .line 108
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 93
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->hideMenu()V

    goto :goto_1

    .line 96
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->hideMenu()V

    goto :goto_0

    .line 101
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->hideMenu()V

    goto :goto_0

    .line 91
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
    .line 113
    iput p1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mOrientation:I

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->refreshMenuPosition()V

    .line 115
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->refreshMenuPosition()V

    .line 148
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLList;->showScrollBar()V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;

    move-result-object v0

    .line 159
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;->requestFocus()Z

    .line 163
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/MotionPanoramaListItem;
    :cond_2
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 168
    return-void
.end method
