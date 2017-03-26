.class public Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    }
.end annotation


# static fields
.field private static final EFFECT_BUTTON_SIDE_MARGIN_LAND:I

.field private static final EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

.field private static final EFFECT_BUTTON_TEXT_HEIGHT:I

.field private static final EFFECT_BUTTON_TEXT_WIDTH:I

.field private static final EFFECT_DOWNLOADER_BUTTON_POS_X:I

.field private static final EFFECT_DOWNLOADER_BUTTON_POS_Y:I

.field private static final EFFECT_DOWNLOADER_TEXT_POS_Y:I

.field private static final EFFECT_ITEM_HEIGHT:I

.field private static final EFFECT_ITEM_WIDTH:I

.field private static final EFFECT_LINE_THICKNESS:I

.field private static final EFFECT_MANAGER_BUTTON_HEIGHT:I

.field private static final EFFECT_MANAGER_BUTTON_POS_X:I

.field private static final EFFECT_MANAGER_BUTTON_POS_Y:I

.field private static final EFFECT_MANAGER_BUTTON_WIDTH:I

.field private static final EFFECT_MANAGER_TEXT_POS_Y:I

.field private static final EFFECT_MENU_HEIGHT:I

.field private static final EFFECT_MENU_POS_X:I

.field private static final EFFECT_MENU_POS_Y:I

.field private static final EFFECT_MENU_RIGHT_MARGIN:I

.field private static final EFFECT_MENU_SCROLLBAR_PADDING:I

.field private static final EFFECT_MENU_WIDTH:I

.field private static final EFFECT_ROWS:I = 0x3

.field private static final EFFECT_TEXT_SIZE:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "EffectThumbnailListMenu"


# instance fields
.field private final mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

.field private mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

.field private mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

.field private mEffectManagerText:Lcom/samsung/android/glview/GLText;

.field private final mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

.field private final mMute:Z

.field private final mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    .line 56
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    .line 58
    const v0, 0x7f0900cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    .line 59
    const v0, 0x7f0900cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    .line 60
    const v0, 0x7f0900cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    .line 61
    const v0, 0x7f0900c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    .line 62
    const v0, 0x7f0900ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    .line 63
    const v0, 0x7f0900c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    .line 64
    const v0, 0x7f0900c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    .line 65
    const v0, 0x7f0900ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    .line 66
    const v0, 0x7f0900df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    .line 67
    const v0, 0x7f0900dd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    .line 68
    const v0, 0x7f0900d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    .line 69
    const v0, 0x7f0900cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    .line 70
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_LAND:I

    .line 72
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    .line 73
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_LAND:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_X:I

    .line 74
    const v0, 0x7f0900de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    .line 75
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_TEXT_POS_Y:I

    .line 76
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_X:I

    .line 77
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_TEXT_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v0, v1

    const v1, 0x7f0900dc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    .line 79
    const v0, 0x7f0a002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_TEXT_SIZE:F

    .line 80
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_TEXT_POS_Y:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 11
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
    .line 94
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IIZ)V

    .line 95
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IIZ)V
    .locals 12
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I
    .param p9, "slideDirection"    # I
    .param p10, "isMuted"    # Z

    .prologue
    .line 99
    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v7, v1

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    int-to-float v8, v1

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 84
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 85
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    .line 101
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 102
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMute:Z

    .line 104
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0200b1

    const v6, 0x7f0200b2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f080033

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_LAND:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 118
    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_TEXT_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v7, 0x7f080033

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_POS_Y:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 134
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0200af

    const v6, 0x7f0200b0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f080027

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232a

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_LAND:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 148
    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_TEXT_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v7, 0x7f080027

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOADER_BUTTON_POS_Y:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 162
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 170
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setOverScrollEffect(Z)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x7f02028f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarResource(I)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAlpha(F)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    sget v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getScrollBarLength()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarPadding(F)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    sget v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FF)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p9

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p9

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMute:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    return-object v0
.end method

.method private getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v2}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/Item;

    .line 320
    .local v1, "view":Lcom/sec/android/app/camera/widget/gl/Item;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/Item;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/widget/gl/Item;
    :goto_1
    return v0

    .line 318
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/widget/gl/Item;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "view":Lcom/sec/android/app/camera/widget/gl/Item;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refreshItemBG()V
    .locals 5

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 333
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    .line 335
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-nez v1, :cond_1

    .line 344
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_0
    return-void

    .line 338
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 339
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setSelectBGVisibility(I)V

    .line 331
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshItemBG(Lcom/samsung/android/glview/GLView;)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 354
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    .line 356
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-nez v1, :cond_1

    .line 365
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_0
    return-void

    .line 359
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v4

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getCommandID()I

    move-result v3

    if-ne v4, v3, :cond_2

    .line 360
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setSelectBGVisibility(I)V

    .line 352
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshMenuPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getContentHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getContentHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 191
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v0

    const/16 v1, 0x232e

    if-ne v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/command/CommandInterface;->onManageEffectMenuCommand()Z

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v0

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_3

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/command/CommandInterface;->onEffectDownloadMenuCommand()Z

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshItemBG(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 241
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x11f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    .line 249
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 254
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 216
    sparse-switch p1, :sswitch_data_0

    .line 233
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 218
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    goto :goto_1

    .line 221
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    goto :goto_0

    .line 226
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->refreshList()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 266
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x11f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerBtn:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectManagerText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderBtn:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectExtDownloaderText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 301
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshMenuPosition()V

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshItemBG()V

    .line 303
    return-void

    .line 288
    :cond_2
    const-string v0, "EffectThumbnailListMenu"

    const-string v1, "SecEffectThumbnailProcessor is already initialized, so pass"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->showScrollBar()V

    .line 310
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 315
    return-void
.end method
