.class public Lcom/sec/android/app/camera/menu/ModeListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$ScrollListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ModeListMenu$1;,
        Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;
    }
.end annotation


# static fields
.field private static final BUTTON_FONT_COLOR:I

.field private static final BUTTON_TEXT_FONT_SIZE:F

.field private static final BUTTON_TEXT_HEIGHT:F

.field private static final BUTTON_TEXT_MARGIN:F

.field private static final EDIT_MODE:I = 0x1

.field private static final LANDSCAPE_LIST_HORIZONTAL_SPACING:F

.field private static final LANDSCAPE_LIST_VERTICAL_SPACING:F

.field private static final LIST_LANDSCAPE_TOP_MARGIN:F

.field private static final LIST_MENU_TRANSLATE_OFFSET:F

.field private static final LIST_PORTRAIT_TOP_MARGIN:F

.field private static final LIST_PORTRAIT_TOP_PADDING:F

.field private static final LIST_SCROLL_MARGIN_BOTTOM:F

.field private static final LIST_SCROLL_MARGIN_LANDSCAPE:F

.field private static final LIST_SCROLL_MARGIN_PORTRAIT:F

.field private static final MODE_BACK_ICON_MARGIN:F

.field private static final MODE_BACK_ICON_WIDTH:F

.field private static final MODE_EDIT_AREA_MARK_WIDTH:F

.field private static final MODE_INFO_ACTION_BAR_HEIGHT:F

.field private static final MODE_MENU_COLS_WIDTH:F

.field private static final MODE_MENU_ITEM_HEIGHT:F

.field private static final MODE_MENU_ITEM_WIDTH:F

.field private static final MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

.field private static final MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

.field private static final MODE_SHORTCUT_ICON_SIZE:F

.field private static final NORMAL_MODE:I = 0x0

.field private static final OPTION_BUTTON_FONT_COLOR:I

.field private static final OPTION_BUTTON_TEXT_FONT_SIZE:F

.field private static final OPTION_BUTTON_TEXT_HEIGHT:F

.field private static final OPTION_BUTTON_TEXT_MARGIN:F

.field private static final OPTION_BUTTON_TEXT_MIN_HEIGHT:F

.field private static final OPTION_GROUP_MARGIN:F

.field private static final PORTRAIT_LIST_HORIZONTAL_SPACING:F

.field private static final PORTRAIT_LIST_VERTICAL_SPACING:F

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDTH:F

.field private static final SHORT_CUT_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ModeListMenu"


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

.field private final mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBackKeyPressed:Z

.field private mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

.field private mCheckedCount:I

.field private mCurrentMode:I

.field private mCurrentModeOrderString:Ljava/lang/String;

.field private final mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private final mDoneText:Lcom/samsung/android/glview/GLText;

.field private mDownLoadButton:Lcom/samsung/android/glview/GLButton;

.field private mDownLoadText:Lcom/samsung/android/glview/GLText;

.field private mDragHelpToast:Landroid/widget/Toast;

.field private mEditAreaMarkList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditButton:Lcom/samsung/android/glview/GLButton;

.field private final mEditText:Lcom/samsung/android/glview/GLText;

.field private mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private mFlingGestureDetector:Landroid/view/GestureDetector;

.field private final mInfoButton:Lcom/samsung/android/glview/GLButton;

.field private final mInfoText:Lcom/samsung/android/glview/GLText;

.field private mInitialModeOrderString:Ljava/lang/String;

.field private mIsInfoMenuShowing:Z

.field private final mLandscapeHideAnimation:Landroid/view/animation/Animation;

.field private final mLandscapeShowAnimation:Landroid/view/animation/Animation;

.field private mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreButton:Lcom/samsung/android/glview/GLButton;

.field private final mMoreText:Lcom/samsung/android/glview/GLText;

.field private mNeedShowBaseMenu:Z

.field private mNormalModeDrag:Z

.field private final mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private final mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mOrientation:I

.field private final mPortraitHideAnimation:Landroid/view/animation/Animation;

.field private final mPortraitShowAnimation:Landroid/view/animation/Animation;

.field private final mShortCutButton:Lcom/samsung/android/glview/GLButton;

.field private mShortCutCheckedList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortCutText:Lcom/samsung/android/glview/GLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    .line 80
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    .line 82
    const v0, 0x7f090110

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    .line 83
    const v0, 0x7f090159

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    .line 84
    const v0, 0x7f090111

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    .line 85
    const v0, 0x7f09015a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    .line 87
    const v0, 0x7f090133

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_LANDSCAPE:F

    .line 88
    const v0, 0x7f090134

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_PORTRAIT:F

    .line 89
    const v0, 0x7f090132

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    .line 91
    const v0, 0x7f090332

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    .line 92
    const v0, 0x7f090331

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    .line 93
    const v0, 0x7f090333

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_PADDING:F

    .line 94
    const v0, 0x7f0902d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    .line 95
    const v0, 0x7f0902d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    .line 96
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    .line 97
    const v0, 0x7f0a0035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    .line 98
    const v0, 0x7f0a0036

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    .line 99
    const v0, 0x7f090135

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    .line 101
    const v0, 0x7f090137

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    .line 102
    const v0, 0x7f090136

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    .line 103
    const v0, 0x7f090334

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    .line 104
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    .line 106
    const v0, 0x7f090139

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    .line 107
    const v0, 0x7f090138

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    .line 108
    const v0, 0x7f09013a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    .line 109
    const v0, 0x7f090336

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    .line 110
    const v0, 0x7f0c0022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    .line 111
    const v0, 0x7f090335

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    .line 113
    const v0, 0x7f090124

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_INFO_ACTION_BAR_HEIGHT:F

    .line 114
    const v0, 0x7f09032d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    .line 115
    const v0, 0x7f09013b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_SHORTCUT_ICON_SIZE:F

    .line 117
    const v0, 0x7f09032c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    .line 118
    const v0, 0x7f09032b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 54
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 171
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v11, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

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

    .line 143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    .line 144
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    .line 145
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 150
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 156
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    .line 157
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    .line 161
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    .line 162
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 163
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    .line 164
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 165
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNeedShowBaseMenu:Z

    .line 173
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 174
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "downloadText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v46

    .line 180
    .local v46, "infoText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080180

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v50

    .line 182
    .local v50, "moreText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v47, v2, v3

    .line 184
    .local v47, "infoTextWidth":F
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v6, v2, v3

    .line 186
    .local v6, "downloadTextWidth":F
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v51, v2, v3

    .line 188
    .local v51, "moreTextWidth":F
    add-float v2, v51, v47

    add-float v49, v2, v6

    .line 189
    .local v49, "menuBarWidth":F
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    cmpl-float v2, v49, v2

    if-lez v2, :cond_0

    .line 190
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    add-float v3, v51, v47

    sub-float v6, v2, v3

    .line 191
    sget v49, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    .line 193
    :cond_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_1

    .line 194
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 201
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v13, v6

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 208
    :cond_1
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    sget v17, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/16 v18, 0x0

    move/from16 v13, v47

    move-object/from16 v15, v46

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 214
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v12, 0x0

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v11, v6

    move/from16 v13, v47

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 220
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    sget v17, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/16 v18, 0x0

    move/from16 v13, v51

    move-object/from16 v15, v50

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreText:Lcom/samsung/android/glview/GLText;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 226
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    add-float v11, v6, v47

    const/4 v12, 0x0

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v13, v51

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 232
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v48, v2, v49

    .line 233
    .local v48, "menuBarPosX":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v48

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v49

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move/from16 v0, v49

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move/from16 v0, v49

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 240
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 246
    new-instance v9, Lcom/samsung/android/glview/GLGridList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v15, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    sget v16, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    sget v17, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    sget v18, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const v3, 0x7f02028f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAlpha(F)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 252
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/menu/ModeListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const-string v3, "MODE_MENU_LIST"

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setObjectTag(Ljava/lang/String;)V

    .line 257
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080144

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 270
    .local v15, "editText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v15, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v45

    .line 272
    .local v45, "editTextWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 273
    .local v27, "shortCutText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v53

    .line 275
    .local v53, "shortCutTextWidth":F
    cmpl-float v2, v45, v53

    if-lez v2, :cond_6

    move/from16 v13, v45

    .line 276
    .local v13, "optionTextWidth":F
    :goto_0
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v52, v2, v3

    .line 277
    .local v52, "optionTextMaxWidth":F
    cmpl-float v2, v13, v52

    if-lez v2, :cond_3

    .line 278
    move/from16 v13, v52

    .line 280
    :cond_3
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    .line 281
    .local v14, "optionTextHeight":F
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    cmpg-float v2, v14, v2

    if-gez v2, :cond_4

    sget v14, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    .line 283
    :cond_4
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v20, v13, v2

    .line 285
    .local v20, "optionMenuWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f020124

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v20

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v20

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float v4, v4, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float v5, v5, v20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 297
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    sget v11, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/4 v12, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    sget v17, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 299
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 304
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 307
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v2, 0x7f0c0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v21, v14

    invoke-direct/range {v16 .. v26}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 315
    new-instance v21, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v22

    sget v23, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/16 v24, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v28, v2, v3

    sget v29, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    const/16 v30, 0x0

    move/from16 v25, v13

    move/from16 v26, v14

    invoke-direct/range {v21 .. v30}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 317
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 322
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 325
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v2, 0x7f0c0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v19, v14

    move/from16 v21, v14

    invoke-direct/range {v16 .. v26}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v34

    .line 339
    .local v34, "doneText":Ljava/lang/String;
    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v32, v2, v3

    .line 341
    .local v32, "doneTextWidth":F
    new-instance v28, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    sget v33, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v35, v2, v3

    sget v36, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/16 v37, 0x0

    invoke-direct/range {v28 .. v37}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 347
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 348
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v2, v2, v32

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float v37, v2, v3

    const/16 v38, 0x0

    sget v40, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, v32

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v32

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v32

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    add-float v4, v4, v32

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    add-float v5, v5, v32

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 360
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 367
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 368
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float v37, v2, v3

    sget v38, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sget v39, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sget v40, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    const v41, 0x7f02028e

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 380
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080184

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    const v3, 0x7f0a0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    const v3, 0x7f0a0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeHideAnimation:Landroid/view/animation/Animation;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitHideAnimation:Landroid/view/animation/Animation;

    .line 397
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 398
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 405
    :goto_5
    const v2, 0x7f0a0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    .line 407
    new-instance v2, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 408
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 410
    return-void

    .end local v13    # "optionTextWidth":F
    .end local v14    # "optionTextHeight":F
    .end local v20    # "optionMenuWidth":F
    .end local v32    # "doneTextWidth":F
    .end local v34    # "doneText":Ljava/lang/String;
    .end local v52    # "optionTextMaxWidth":F
    :cond_6
    move/from16 v13, v53

    .line 275
    goto/16 :goto_0

    .line 302
    .restart local v13    # "optionTextWidth":F
    .restart local v14    # "optionTextHeight":F
    .restart local v20    # "optionMenuWidth":F
    .restart local v52    # "optionTextMaxWidth":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_1

    .line 320
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_2

    .line 354
    .restart local v32    # "doneTextWidth":F
    .restart local v34    # "doneText":Ljava/lang/String;
    :cond_9
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v37, v2, v32

    const/16 v38, 0x0

    sget v40, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, v32

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v32

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v32

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move/from16 v0, v32

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move/from16 v0, v32

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 374
    :cond_a
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    sget v37, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sget v38, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sget v39, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sget v40, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    const v41, 0x7f02028d

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sget v5, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_4

    .line 401
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()F
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    return v0
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/menu/ModeListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$810(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method private changeMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 882
    if-ne p1, v5, :cond_4

    .line 883
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 884
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 886
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    .line 892
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 893
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 894
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v1, :cond_1

    .line 892
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 889
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    goto :goto_0

    .line 897
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 898
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    goto :goto_2

    .line 902
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 903
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 904
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 905
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    .line 906
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    .line 907
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f080178

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 908
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v2, :cond_3

    .line 909
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 912
    :cond_3
    iput v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    .line 963
    .end local v0    # "i":I
    :goto_3
    return-void

    .line 913
    :cond_4
    if-ne p1, v6, :cond_7

    .line 914
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 915
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 917
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 918
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 919
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v1, :cond_5

    .line 917
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 922
    :cond_5
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 923
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 924
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    goto :goto_5

    .line 928
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 929
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 930
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 931
    iput v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    goto :goto_3

    .line 933
    .end local v0    # "i":I
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v5, :cond_9

    .line 934
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 935
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    .line 937
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 938
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 939
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v1, :cond_8

    .line 937
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 942
    :cond_8
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 943
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    goto :goto_7

    .line 946
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v6, :cond_b

    .line 947
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 948
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 949
    .restart local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v1, :cond_a

    .line 947
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 952
    :cond_a
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 953
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 954
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    goto :goto_9

    .line 958
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 959
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 960
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 961
    iput v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    goto/16 :goto_3
.end method

.method private compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "modeOrder1"    # Ljava/lang/String;
    .param p2, "modeOrder2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 966
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "st1":[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, "st2":[Ljava/lang/String;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 976
    :cond_0
    :goto_0
    return v3

    .line 972
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 973
    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    aget-object v5, v2, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 976
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 3

    .prologue
    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 981
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    .line 982
    .local v1, "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 980
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    .end local v1    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 994
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-nez v1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-object v0

    .line 997
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v1, :cond_2

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 999
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    goto :goto_0

    .line 1000
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1002
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    goto :goto_0
.end method

.method private hideDragHelpToast()V
    .locals 1

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isShowingDragHelpToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    .line 1015
    :cond_0
    return-void
.end method

.method private hideModeAreaMark()V
    .locals 3

    .prologue
    .line 1018
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 1019
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    .line 1020
    .local v1, "image":Lcom/samsung/android/glview/GLImage;
    if-eqz v1, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1022
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1018
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    .end local v1    # "image":Lcom/samsung/android/glview/GLImage;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1026
    return-void
.end method

.method private isShowingDragHelpToast()Z
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V
    .locals 7
    .param p1, "item"    # Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .prologue
    const v5, 0x7f020120

    .line 1033
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1034
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 1035
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->pressedIconId:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ImageUtils;->overlapBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1036
    .local v1, "overlapBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_SHORTCUT_ICON_SIZE:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_SHORTCUT_ICON_SIZE:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1037
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1038
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1045
    .end local v0    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    :goto_0
    return-void

    .line 1040
    .end local v1    # "overlapBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->overlapBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1041
    .restart local v1    # "overlapBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_SHORTCUT_ICON_SIZE:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_SHORTCUT_ICON_SIZE:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getResizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1042
    .restart local v2    # "resizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1043
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetOrder(Z)V
    .locals 12
    .param p1, "isSave"    # Z

    .prologue
    const/16 v11, 0x12c

    const/16 v10, 0x63

    const/16 v9, 0x2c

    .line 1048
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1050
    .local v3, "firstBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    if-eqz v3, :cond_0

    .line 1051
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1052
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->moveEmptyToLast()V

    .line 1055
    move-object v2, v3

    .line 1056
    .local v2, "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1059
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v7, v7, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-nez v7, :cond_1

    .line 1060
    const-string v7, "ModeListMenu"

    const-string v8, "Invalid menu data was provided"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    :cond_0
    :goto_0
    return-void

    .line 1064
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "dropbox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    :cond_1
    sget-boolean v7, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v7, :cond_3

    .line 1065
    const/16 v7, 0x154

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1070
    :goto_1
    if-eqz v2, :cond_4

    .line 1071
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getView()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    .line 1072
    .local v4, "itemView":Lcom/samsung/android/glview/GLView;
    instance-of v7, v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v7, :cond_0

    move-object v6, v4

    .line 1076
    check-cast v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1077
    .local v6, "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 1078
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1080
    .local v1, "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 1081
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    .end local v1    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    move-result-object v2

    .line 1086
    goto :goto_1

    .line 1067
    .end local v4    # "itemView":Lcom/samsung/android/glview/GLView;
    .end local v6    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1088
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 1089
    if-eqz p1, :cond_0

    .line 1090
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v5, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    .line 1092
    .local v5, "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    .line 1095
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 1098
    .end local v5    # "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v7, v7, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-nez v7, :cond_6

    .line 1099
    const-string v7, "ModeListMenu"

    const-string v8, "Invalid menu data was provided"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1103
    :cond_6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    :goto_2
    if-eqz v2, :cond_8

    .line 1106
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getView()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    .line 1107
    .restart local v4    # "itemView":Lcom/samsung/android/glview/GLView;
    instance-of v7, v4, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v7, :cond_0

    move-object v6, v4

    .line 1111
    check-cast v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1112
    .restart local v6    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v7

    if-eq v7, v10, :cond_7

    .line 1113
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1114
    .restart local v1    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 1115
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    .end local v1    # "data":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_7
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    move-result-object v2

    .line 1120
    goto :goto_2

    .line 1122
    .end local v4    # "itemView":Lcom/samsung/android/glview/GLView;
    .end local v6    # "view":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    .line 1123
    if-eqz p1, :cond_0

    .line 1124
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v5, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .line 1126
    .local v5, "menuRes":Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->saveOrder()V

    .line 1129
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_0
.end method

.method private showModeAreaMark()V
    .locals 14

    .prologue
    const v13, 0x7f02011c

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 1136
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1137
    const-string v7, "ModeListMenu"

    const-string v8, "Mode List size is 0 or less."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1141
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1142
    .local v5, "lowNum":I
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLGridList;->getLeft()F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    div-float/2addr v8, v11

    add-float v1, v7, v8

    .line 1143
    .local v1, "initPosX":F
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    div-float/2addr v8, v11

    add-float v2, v7, v8

    .line 1144
    .local v2, "initPosY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    add-int/lit8 v7, v5, -0x1

    if-ge v0, v7, :cond_0

    .line 1145
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget v7, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_3

    .line 1146
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    int-to-float v8, v3

    sget v9, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    int-to-float v9, v0

    sget v10, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    sget v11, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    invoke-direct {v6, v7, v8, v9, v13}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    .line 1147
    .local v6, "mark":Lcom/samsung/android/glview/GLImage;
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v8, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1148
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1149
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v6}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1145
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1144
    .end local v6    # "mark":Lcom/samsung/android/glview/GLImage;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1152
    .end local v0    # "i":I
    .end local v1    # "initPosX":F
    .end local v2    # "initPosY":F
    .end local v3    # "j":I
    .end local v5    # "lowNum":I
    :cond_4
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 1153
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v7

    add-int/lit8 v4, v7, -0x2

    .line 1154
    .local v4, "listSize":I
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLGridList;->getLeft()F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    div-float/2addr v8, v11

    add-float v1, v7, v8

    .line 1155
    .restart local v1    # "initPosX":F
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    div-float/2addr v8, v11

    add-float v2, v7, v8

    .line 1156
    .restart local v2    # "initPosY":F
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v4, :cond_0

    .line 1157
    new-instance v6, Lcom/samsung/android/glview/GLImage;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    int-to-float v8, v0

    div-float/2addr v8, v11

    sget v9, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    sget v10, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    invoke-direct {v6, v7, v1, v8, v13}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    .line 1159
    .restart local v6    # "mark":Lcom/samsung/android/glview/GLImage;
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v8, v12}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1160
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1161
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7, v6}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1156
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 1164
    .end local v0    # "i":I
    .end local v1    # "initPosX":F
    .end local v2    # "initPosY":F
    .end local v4    # "listSize":I
    .end local v6    # "mark":Lcom/samsung/android/glview/GLImage;
    :cond_6
    const-string v7, "ModeListMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "have wrong orientation value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->reset()V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 419
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 421
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 425
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 426
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 791
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xbe0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 430
    const-string v6, "ModeListMenu"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v6

    if-nez v6, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v4

    .line 436
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 437
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 439
    const-string v5, "ModeListMenu"

    const-string v6, "return.. Mode menu animation is running.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 445
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v6, 0xbe1

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 450
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v4, v5

    .line 451
    goto :goto_0

    .line 448
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 452
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 454
    const-string v5, "ModeListMenu"

    const-string v6, "return.. Mode menu animation is running.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 459
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_6
    :goto_2
    move v4, v5

    .line 466
    goto :goto_0

    .line 461
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 462
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 463
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    goto :goto_2

    .line 467
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 468
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    goto/16 :goto_0

    .line 469
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 470
    iput v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I

    .line 471
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    goto/16 :goto_0

    .line 472
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 473
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v5, :cond_b

    .line 474
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 475
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 476
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v6, 0x1c2c

    invoke-interface {v5, v6, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v5, v8, :cond_0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "commandIdStringForLogging":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 480
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v3

    .line 481
    .local v3, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v3, :cond_d

    .line 479
    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 484
    :cond_d
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutCheckBoxSelected()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 485
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V

    .line 486
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 490
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_e
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 491
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 492
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v6, 0x1c2b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 494
    .end local v1    # "commandIdStringForLogging":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 495
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v8, :cond_10

    .line 496
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 497
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_0

    .line 498
    :cond_10
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v6, v5, :cond_0

    .line 499
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    goto/16 :goto_0

    .line 502
    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 503
    const/16 v5, 0x74

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 504
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto/16 :goto_0

    .line 508
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    goto/16 :goto_0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 521
    :cond_0
    const/4 v0, 0x0

    .line 523
    .local v0, "translateY":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 556
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v5, v0}, Lcom/samsung/android/glview/GLGridList;->scrollList(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    neg-float v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/glview/GLView;->translate(FF)V

    .line 560
    .end local v0    # "translateY":F
    :cond_2
    return-void

    .line 525
    .restart local v0    # "translateY":F
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    .line 526
    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    .line 527
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 528
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    .line 532
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_4

    .line 533
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    .line 534
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 535
    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    .line 539
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    .line 540
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    .line 541
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 542
    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    .line 546
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    .line 547
    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    .line 548
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 549
    sget v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 564
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 565
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    .line 567
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1c2c

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 569
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 581
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v0, :cond_0

    .line 582
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    .line 583
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    goto :goto_0
.end method

.method public onDrop(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 591
    return-void
.end method

.method public onFlingDirection(II)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 595
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 4

    .prologue
    .line 796
    const-string v1, "ModeListMenu"

    const-string v2, "onHide"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 799
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 801
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v1, :cond_0

    .line 802
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 803
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v1, 0x7f0a0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    .line 807
    .end local v0    # "backgroundAnimation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 810
    :cond_1
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 817
    :cond_0
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 822
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 604
    sparse-switch p1, :sswitch_data_0

    .line 617
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 606
    :sswitch_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 604
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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 622
    sparse-switch p1, :sswitch_data_0

    .line 663
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 624
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    if-eqz v1, :cond_0

    .line 628
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v0, :cond_1

    .line 629
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    goto :goto_0

    .line 632
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 633
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 644
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 653
    :sswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_4

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 655
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 660
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    .line 657
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 622
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 668
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 669
    iput p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    .line 671
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v0, v2, :cond_5

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLandscapeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 680
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 681
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v0, v6, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    .line 685
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v0, v2, :cond_6

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    .line 707
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v0, v6, :cond_4

    .line 708
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 711
    return-void

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPortraitHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 694
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->getContentHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_PADDING:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    goto :goto_1

    .line 703
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    goto :goto_1
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method public onScrollStart()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method protected onShow()V
    .locals 9

    .prologue
    const v8, 0x7f0a0012

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 826
    const-string v4, "ModeListMenu"

    const-string v5, "onShow"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    .line 828
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 829
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 830
    .local v1, "menuBarAnimation":Landroid/view/animation/Animation;
    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 831
    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 832
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 833
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 834
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 837
    .end local v1    # "menuBarAnimation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 838
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    .line 841
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 842
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    .line 845
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    .line 847
    .local v3, "modeListCount":I
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v4, :cond_3

    .line 848
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_6

    .line 849
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 855
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 856
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    .line 857
    .local v2, "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 858
    :cond_4
    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    .line 855
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 851
    .end local v0    # "i":I
    .end local v2    # "modeItem":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 862
    .restart local v0    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 863
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNeedShowBaseMenu:Z

    .line 864
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 868
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 869
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    .line 870
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-eqz v0, :cond_1

    .line 871
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->requestFocus()Z

    .line 874
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 879
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 724
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 732
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshModeMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-eqz v0, :cond_3

    .line 739
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    .line 763
    :goto_1
    return-void

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-eqz v0, :cond_0

    .line 745
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->getContentHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_PADDING:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    goto :goto_1

    .line 760
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    goto :goto_1
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 3
    .param p1, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->reset()V

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    .line 780
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_LANDSCAPE:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    .line 786
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 787
    return-void

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    sget v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_PORTRAIT:F

    sget v2, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(F)V

    goto :goto_0
.end method
