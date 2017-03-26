.class public Lcom/sec/android/app/camera/menu/EffectListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/EffectListMenu$1;,
        Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final EFFECT_BUTTON_SIDE_MARGIN_LAND:I

.field private static final EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

.field private static final EFFECT_BUTTON_TEXT_HEIGHT:I

.field private static final EFFECT_BUTTON_TEXT_WIDTH:I

.field private static final EFFECT_ITEM_HEIGHT:I

.field private static final EFFECT_ITEM_WIDTH:I

.field private static final EFFECT_LINE_THICKNESS:I

.field private static final EFFECT_MANAGER_BUTTON_HEIGHT:I

.field private static final EFFECT_MANAGER_BUTTON_WIDTH:I

.field private static final EFFECT_MENU_HEIGHT:I

.field private static final EFFECT_MENU_POS_X:I

.field private static final EFFECT_MENU_POS_Y:I

.field private static final EFFECT_MENU_RIGHT_MARGIN:I

.field private static final EFFECT_MENU_SCROLLBAR_PADDING:I

.field private static final EFFECT_MENU_WIDTH:I

.field private static final EFFECT_ROWS:I = 0x1

.field private static final EFFECT_TEXT_SIZE:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "EffectListMenu"


# instance fields
.field private final mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private final mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLList;

.field private final mMute:Z

.field private final mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->SCREEN_WIDTH:I

    .line 49
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->SCREEN_HEIGHT:I

    .line 51
    const v0, 0x7f0902ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_POS_X:I

    .line 52
    const v0, 0x7f0902cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_POS_Y:I

    .line 53
    const v0, 0x7f0902cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_WIDTH:I

    .line 54
    const v0, 0x7f0902c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_HEIGHT:I

    .line 55
    const v0, 0x7f0902c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I

    .line 56
    const v0, 0x7f0902c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I

    .line 57
    const v0, 0x7f0902c6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I

    .line 58
    const v0, 0x7f0902cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    .line 59
    const v0, 0x7f0900df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    .line 60
    const v0, 0x7f0900dd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MANAGER_BUTTON_HEIGHT:I

    .line 61
    const v0, 0x7f0900d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_BUTTON_TEXT_WIDTH:I

    .line 62
    const v0, 0x7f0900cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    .line 63
    sget v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    .line 64
    sget v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_BUTTON_SIDE_MARGIN_LAND:I

    .line 65
    sget v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_RIGHT_MARGIN:I

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MANAGER_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_BUTTON_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_BUTTON_SIDE_MARGIN_PORTRAIT:I

    .line 66
    const v0, 0x7f0a002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_TEXT_SIZE:F

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
    .line 76
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

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IIZ)V

    .line 77
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
    .line 81
    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v7, v1

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_POS_Y:I

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

    .line 70
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectListMenu;Lcom/sec/android/app/camera/menu/EffectListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 71
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    .line 83
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 84
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMute:Z

    .line 86
    new-instance v1, Lcom/samsung/android/glview/GLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v2, 0x7f02028f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setScrollBarAlpha(F)V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLList;->getScrollBarLength()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_SCROLLBAR_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLList;->setScrollBarPadding(F)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p9

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p9

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/EffectListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/EffectListMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mMute:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method private getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v2}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/Item;

    .line 190
    .local v1, "view":Lcom/sec/android/app/camera/widget/gl/Item;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/Item;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/widget/gl/Item;
    :goto_1
    return v0

    .line 188
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/widget/gl/Item;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "view":Lcom/sec/android/app/camera/widget/gl/Item;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private refreshItemBG()V
    .locals 5

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 203
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .line 205
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    if-nez v1, :cond_1

    .line 214
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_0
    return-void

    .line 208
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 209
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    .line 201
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshItemBG(Lcom/samsung/android/glview/GLView;)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 224
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .line 226
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    if-nez v1, :cond_1

    .line 235
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_0
    return-void

    .line 229
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->getCommandId()I

    move-result v4

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getCommandID()I

    move-result v3

    if-ne v4, v3, :cond_2

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    .line 222
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setSelectBGVisibility(I)V

    goto :goto_1
.end method

.method private refreshMenuPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->getContentHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getContentHeight()F

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
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 107
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 120
    .end local p1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return v1

    .line 114
    .restart local p1    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->refreshItemBG(Lcom/samsung/android/glview/GLView;)V

    .line 116
    check-cast p1, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    .end local p1    # "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 155
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 125
    sparse-switch p1, :sswitch_data_0

    .line 142
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 127
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_1

    .line 130
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_0

    .line 135
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->hideMenu()V

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->refreshList()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->refreshMenuPosition()V

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->refreshItemBG()V

    .line 173
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLList;->showScrollBar()V

    .line 180
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 185
    return-void
.end method
