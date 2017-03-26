.class public Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ModeInfoListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;,
        Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final INFO_BUTTON_TEXT_FONT_SIZE:F

.field private static final MODE_INFO_ACTION_BAR_HEIGHT:F

.field private static final MODE_INFO_ITEM_ANIMATION_DURATION:I

.field private static final MODE_INFO_ITEM_START_OFFSET:I

.field private static final MODE_INFO_LIST_ITEM_HEIGHT:F

.field private static final MODE_INFO_LIST_ITEM_WIDTH:F

.field private static final MODE_INFO_LIST_START_POS_Y:F

.field private static final MODE_INFO_MENU_START_OFFSET:I

.field private static final MODE_TITLE_FONT_COLOR:I

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "ModeInfoListMenu"


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

.field private final mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mInfoText:Lcom/samsung/android/glview/GLText;

.field private mList:Lcom/samsung/android/glview/GLList;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mNeedShowBaseMenu:Z

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    .line 61
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    .line 63
    const v0, 0x7f090124

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    .line 64
    sget v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_WIDTH:F

    .line 65
    const v0, 0x7f090129

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_HEIGHT:F

    .line 66
    const v0, 0x7f09012c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    .line 68
    const v0, 0x7f090130

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->INFO_BUTTON_TEXT_FONT_SIZE:F

    .line 69
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_TITLE_FONT_COLOR:I

    .line 71
    const v0, 0x7f0a000d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_MENU_START_OFFSET:I

    .line 72
    const v0, 0x7f0a000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_START_OFFSET:I

    .line 73
    const v0, 0x7f0a000b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_ANIMATION_DURATION:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 17
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 87
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v11, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

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

    .line 78
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    .line 82
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    .line 83
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    .line 89
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 90
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "infoText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->INFO_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v15, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v16

    .line 97
    .local v16, "infoTextWidth":F
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    sub-float/2addr v4, v5

    sub-float v4, v4, v16

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    sub-float/2addr v5, v6

    sub-float v5, v5, v16

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    add-float v4, v4, v16

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    add-float v5, v5, v16

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 109
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

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

    .line 113
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    sget v7, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    const v8, 0x7f02028d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080184

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 117
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->INFO_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float v9, v6, v8

    sget v10, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_TITLE_FONT_COLOR:I

    const/4 v11, 0x0

    move/from16 v6, v16

    move-object v8, v15

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 127
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 136
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 138
    new-instance v2, Lcom/samsung/android/glview/GLList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sget v6, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const v3, 0x7f02028f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->setScrollBarAlpha(F)V

    .line 142
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 156
    return-void

    .line 103
    :cond_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_WIDTH:F

    return v0
.end method

.method static synthetic access$300()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method private showShootingModeMenu()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x64

    const/16 v5, 0x4f

    const/16 v4, 0x4e

    const/4 v3, 0x2

    .line 321
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 322
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 324
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 325
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 330
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 348
    :goto_0
    return-void

    .line 333
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 334
    .restart local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    .line 335
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_0

    .line 338
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 340
    .restart local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_0

    .line 343
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 344
    .restart local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->reset()V

    .line 161
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 162
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const v4, 0x7f0a0010

    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->isAnimationFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, "ModeInfoListMenu"

    const-string v3, "return.. Mode info animation is running.."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return v1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->showShootingModeMenu()V

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->hideMenu()V

    .line 177
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 178
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    goto :goto_0
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 242
    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 185
    sparse-switch p1, :sswitch_data_0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 191
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 251
    sparse-switch p1, :sswitch_data_0

    .line 262
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 253
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->showShootingModeMenu()V

    goto :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 200
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 201
    iput p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setVisibility(I)V

    .line 204
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setVisibility(I)V

    .line 213
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_START_POS_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLList;->setSize(FF)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto :goto_0
.end method

.method protected onShow()V
    .locals 19

    .prologue
    .line 267
    const-string v2, "ModeInfoListMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->isActive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mInfoButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getFirstFullyVisibleViewIndex()I

    move-result v11

    .line 272
    .local v11, "firstVisibleIndex":I
    if-eqz v11, :cond_0

    .line 273
    add-int/lit8 v11, v11, -0x1

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getLastFullyVisibleViewIndex()I

    move-result v16

    .line 277
    .local v16, "lastVisibleIndex":I
    if-nez v16, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 283
    :cond_1
    :goto_0
    move v12, v11

    .local v12, "i":I
    const/4 v14, 0x0

    .local v14, "itemCount":I
    move v15, v14

    .end local v14    # "itemCount":I
    .local v15, "itemCount":I
    :goto_1
    move/from16 v0, v16

    if-gt v12, v0, :cond_3

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2, v12}, Lcom/samsung/android/glview/GLList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 287
    .local v6, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 288
    .local v13, "itemAnimationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 289
    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_MENU_START_OFFSET:I

    sget v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_START_OFFSET:I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "itemCount":I
    .restart local v14    # "itemCount":I
    mul-int/2addr v3, v15

    add-int v17, v2, v3

    .line 291
    .local v17, "startOffset":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getHeight()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_WIDTH:F

    float-to-int v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->SCREEN_HEIGHT:F

    float-to-int v8, v8

    new-instance v9, Landroid/view/animation/interpolator/SineOut33;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineOut33;-><init>()V

    sget v10, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_ANIMATION_DURATION:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v18

    .line 293
    .local v18, "translateAnim":Landroid/view/animation/Animation;
    move/from16 v0, v17

    int-to-long v2, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 294
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 295
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 296
    sget v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_ITEM_ANIMATION_DURATION:I

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 298
    invoke-virtual {v6, v13}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->startAnimation()V

    .line 283
    add-int/lit8 v12, v12, 0x1

    move v15, v14

    .end local v14    # "itemCount":I
    .restart local v15    # "itemCount":I
    goto :goto_1

    .line 279
    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v12    # "i":I
    .end local v13    # "itemAnimationSet":Landroid/view/animation/AnimationSet;
    .end local v15    # "itemCount":I
    .end local v17    # "startOffset":I
    .end local v18    # "translateAnim":Landroid/view/animation/Animation;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    .line 280
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 303
    .end local v11    # "firstVisibleIndex":I
    .end local v16    # "lastVisibleIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLList;->showScrollBar()V

    .line 307
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mNeedShowBaseMenu:Z

    .line 308
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 313
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 318
    return-void
.end method
