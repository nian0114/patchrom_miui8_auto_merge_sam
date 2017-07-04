.class public Lcom/sec/android/app/camera/menu/EasyModeListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EasyModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_MARGIN_LANDSCAPE:F

.field private static final LIST_MARGIN_LANDSCAPE_BOTTOM:F

.field private static final LIST_MARGIN_PORTRAIT:F

.field private static final LIST_MARGIN_PORTRAIT_BOTTOM:F

.field private static final LIST_PADDING_LANDSCAPE_VERTICAL:F

.field private static final LIST_PADDING_PORTRAIT_VERTICAL:F

.field private static final MODE_MENU_COLS_WIDTH:F

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field private static final MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

.field private static final MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

.field private static final OPTION_BUTTON_FONT_COLOR:I

.field private static final OPTION_BUTTON_TEXT_FONT_SIZE:F

.field private static final OPTION_BUTTON_TEXT_HEIGHT:F

.field private static final OPTION_BUTTON_TEXT_MARGIN:F

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "EasyModeListMenu"


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

.field private mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field private mFlingGestureDetector:Landroid/view/GestureDetector;

.field private final mInfoButton:Lcom/samsung/android/glview/GLButton;

.field private final mInfoText:Lcom/samsung/android/glview/GLText;

.field private mIsInfoMenuShowing:Z

.field private final mLandscapeHideAnimation:Landroid/view/animation/Animation;

.field private final mLandscapeShowAnimation:Landroid/view/animation/Animation;

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private mOrientation:I

.field private final mPortraitHideAnimation:Landroid/view/animation/Animation;

.field private final mPortraitShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    .line 60
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    .line 62
    const v0, 0x7f0900c1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_PADDING_LANDSCAPE_VERTICAL:F

    .line 63
    const v0, 0x7f0900c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_PADDING_PORTRAIT_VERTICAL:F

    .line 64
    const v0, 0x7f0900bd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_LANDSCAPE:F

    .line 65
    const v0, 0x7f0900be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_LANDSCAPE_BOTTOM:F

    .line 66
    const v0, 0x7f0900bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_PORTRAIT:F

    .line 67
    const v0, 0x7f0900c0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_PORTRAIT_BOTTOM:F

    .line 69
    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 70
    const v0, 0x7f0900c3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_WIDTH:I

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_COLS_WIDTH:F

    .line 72
    const v0, 0x7f0a0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    .line 73
    const v0, 0x7f0a0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    .line 75
    const v0, 0x7f090139

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    .line 76
    const v0, 0x7f090136

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    .line 77
    const v0, 0x7f0a0002

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    .line 78
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 19
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 100
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v11, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

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

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    .line 94
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 95
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 96
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mIsInfoMenuShowing:Z

    .line 102
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 103
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "infoText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v6

    .line 110
    .local v6, "infoTextWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    sget v10, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 114
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v14, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v13, v6

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 120
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sub-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v6

    sget v7, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    add-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 131
    new-instance v9, Lcom/samsung/android/glview/GLGridList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v14, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    sget v15, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_COLS_WIDTH:F

    const/16 v16, 0x0

    sget v17, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_PADDING_LANDSCAPE_VERTICAL:F

    sget v18, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setOverScrollEffect(Z)V

    .line 134
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 138
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    const v3, 0x7f0a0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    const v3, 0x7f0a0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeHideAnimation:Landroid/view/animation/Animation;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitHideAnimation:Landroid/view/animation/Animation;

    .line 160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 168
    :goto_0
    const v2, 0x7f0a0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    .line 170
    new-instance v2, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 171
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 173
    return-void

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->reset()V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 182
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 184
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 186
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 187
    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 192
    .local v1, "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :goto_1
    return v0

    .line 190
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/16 v4, 0xbe2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    const-string v2, "EasyModeListMenu"

    const-string v3, "onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mIsInfoMenuShowing:Z

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->isAnimationFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    const-string v1, "EasyModeListMenu"

    const-string v2, "return.. Mode menu animation is running.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v2, 0xbe3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v0, v1

    .line 222
    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->hideMenu()V

    goto :goto_0
.end method

.method public onFlingDirection(II)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 232
    if-ne p1, v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->hideMenu()V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 4

    .prologue
    .line 341
    const-string v1, "EasyModeListMenu"

    const-string v2, "onHide"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v1, :cond_0

    .line 343
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 344
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v1, 0x7f0a0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    .line 347
    .end local v0    # "backgroundAnimation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 354
    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 359
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    sparse-switch p1, :sswitch_data_0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 248
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 257
    sparse-switch p1, :sswitch_data_0

    .line 271
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 259
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->hideMenu()V

    goto :goto_0

    .line 257
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
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 276
    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 277
    iput p1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    .line 279
    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    if-ne v0, v3, :cond_3

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mLandscapeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 290
    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    if-ne v0, v3, :cond_4

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_PADDING_LANDSCAPE_VERTICAL:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_LANDSCAPE:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_LANDSCAPE_BOTTOM:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->reset()V

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->refreshMenuPosition()V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->requestFocus()Z

    .line 306
    return-void

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mPortraitHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_PADDING_PORTRAIT_VERTICAL:F

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_PORTRAIT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_PORTRAIT_BOTTOM:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto :goto_1
.end method

.method protected onShow()V
    .locals 5

    .prologue
    const v4, 0x7f0a0012

    .line 363
    const-string v2, "EasyModeListMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mIsInfoMenuShowing:Z

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->refreshMenuPosition()V

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 369
    .local v1, "menuBarAnimation":Landroid/view/animation/Animation;
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 370
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 371
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 376
    .end local v1    # "menuBarAnimation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->getCurrentSelectedIndex()I

    move-result v0

    .line 379
    .local v0, "currentSelectedIndex":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 382
    :cond_1
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 387
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 392
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshMenuPosition()V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, "moveY":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 332
    return-void

    .line 322
    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_LANDSCAPE:F

    .line 323
    goto :goto_0

    .line 326
    :pswitch_1
    sget v0, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->LIST_MARGIN_PORTRAIT:F

    .line 327
    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
