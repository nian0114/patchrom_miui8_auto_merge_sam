.class public Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "VideoCollageTypeMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$1;,
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;,
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;,
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_COLLAGE_HEIGHT:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_OFFSET:I

.field private static final LIST_ITEM_WIDTH:I

.field public static final LIST_SCROLL_PADDING:I

.field public static final MENU_ANCHOR_LINE_PADDING:I

.field public static final MENU_ANCHOR_PADDING:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TYPE_MENU_BACKGROUND_PADDING:I

.field private static final TYPE_MENU_BOTTOM_PADDING:I

.field private static final TYPE_MENU_POS_X:I

.field private static final TYPE_MENU_POS_Y:I

.field private static final TYPE_MENU_WIDTH:I


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mLastCameraId:I

.field private mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

.field private mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

.field private mOrientation:I

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0901d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_SCROLL_PADDING:I

    .line 51
    const v0, 0x7f090117

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    .line 53
    const v0, 0x7f090116

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    .line 54
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_WIDTH:I

    .line 55
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    .line 56
    const v0, 0x7f09011e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_X:I

    .line 57
    const v0, 0x7f09011f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_Y:I

    .line 58
    const v0, 0x7f090070

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    .line 59
    const v0, 0x7f090054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BOTTOM_PADDING:I

    .line 60
    const v0, 0x7f090053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BACKGROUND_PADDING:I

    .line 61
    const v0, 0x7f090066

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I

    .line 62
    const v0, 0x7f090065

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I

    .line 63
    const v0, 0x7f090063

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_COLLAGE_HEIGHT:I

    .line 64
    const v0, 0x7f090064

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I
    .param p8, "slideDirection"    # I

    .prologue
    .line 78
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 82
    new-instance v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_X:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_Y:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BACKGROUND_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;-><init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    .line 84
    new-instance v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_X:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_POS_Y:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BACKGROUND_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;-><init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 89
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v9

    .line 96
    .local v9, "currentCameraId":I
    if-nez v9, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 101
    :cond_0
    :goto_0
    iput v9, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    .line 103
    .end local v9    # "currentCameraId":I
    :cond_1
    return-void

    .line 98
    .restart local v9    # "currentCameraId":I
    :cond_2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshButtonSelected(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BOTTOM_PADDING:I

    return v0
.end method

.method private refreshButtonSelected(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->refreshButtonSelected(I)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->refreshButtonSelected(I)V

    goto :goto_0
.end method

.method private refreshMenuPosition()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 197
    const/4 v0, 0x0

    .local v0, "translateX":F
    const/4 v1, 0x0

    .line 199
    .local v1, "translateY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_5

    .line 200
    iget v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 254
    :goto_1
    return-void

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v1, v2, v3

    .line 205
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 206
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v1, v2

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 208
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    add-float v0, v2, v3

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v1, v2, v3

    .line 216
    cmpg-float v2, v1, v5

    if-gez v2, :cond_2

    .line 217
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v1, v2

    goto/16 :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    add-float/2addr v2, v1

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 219
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_0

    .line 224
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float v0, v2, v3

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float v1, v2, v3

    .line 227
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 228
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto/16 :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v2

    sub-float v2, v1, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 230
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v3

    add-float v1, v2, v3

    goto/16 :goto_0

    .line 235
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_LINE_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float v1, v2, v3

    .line 238
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 239
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto/16 :goto_0

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    sub-float v2, v1, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 241
    sget v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->MENU_ANCHOR_PADDING:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float v1, v2, v3

    goto/16 :goto_0

    .line 252
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sget v4, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshView(I)V
    .locals 1
    .param p1, "currentCameraId"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    if-eq v0, p1, :cond_0

    .line 262
    if-nez p1, :cond_3

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 269
    :cond_2
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mLastCameraId:I

    goto :goto_0

    .line 265
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperRear:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mMenuWrapperFront:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

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

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 149
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 159
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 107
    sparse-switch p1, :sswitch_data_0

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 109
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    goto :goto_1

    .line 112
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    goto :goto_0

    .line 117
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->hideMenu()V

    goto :goto_0

    .line 107
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
    .line 129
    iput p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mOrientation:I

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshMenuPosition()V

    .line 131
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshView(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshButtonSelected(I)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshMenuPosition()V

    .line 168
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 176
    :cond_0
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 181
    return-void
.end method
