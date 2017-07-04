.class public Lcom/sec/android/app/camera/menu/SideQuickSetting;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "SideQuickSetting.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# static fields
.field public static final ANCHOR_HEIGHT:I

.field public static final ANCHOR_LEFT_PADDING:I

.field public static final ANCHOR_POS_X:I

.field public static final ANCHOR_POS_Y_OFFSET:I

.field public static final ANCHOR_WIDTH:I

.field private static final ANIMATION_DURATION:I

.field private static final ANIMATION_ITEM_DURATION:I = 0x64

.field public static final SIDE_QUICK_SETTING_HEIGHT:I

.field public static final SIDE_QUICK_SETTING_ITEM_HEIGHT:I

.field public static final SIDE_QUICK_SETTING_ITEM_WIDTH:I

.field public static final SIDE_QUICK_SETTING_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "SideQuickSetting"


# instance fields
.field private mAnchors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentAddItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimationRunning:Z

.field private mIsOpened:Z

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mQuickMenuItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0901f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    .line 51
    const v0, 0x7f0901fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_POS_Y:I

    .line 52
    const v0, 0x7f0901f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    .line 53
    const v0, 0x7f0901f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    .line 54
    const v0, 0x7f090118

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_WIDTH:I

    .line 55
    const v0, 0x7f090114

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_HEIGHT:I

    .line 56
    const v0, 0x7f090115

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_LEFT_PADDING:I

    .line 57
    sget v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_LEFT_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_X:I

    .line 58
    sget v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_POS_Y:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_Y_OFFSET:I

    .line 60
    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANIMATION_DURATION:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 77
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    .line 74
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 80
    iput-object p6, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 82
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FIXED_TYPE_SIDE_QUICK_SETTING_MENU:Z

    if-eqz v0, :cond_1

    .line 83
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->initQuickMenuItem()V

    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->showQuickMenuItems()V

    .line 93
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSideQuickSettingState()I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/SideQuickSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/SideQuickSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    return p1
.end method

.method private getCloseAnimation(Lcom/samsung/android/glview/GLView;I)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    .line 280
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 281
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 282
    .local v0, "anim":Landroid/view/animation/Animation;
    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANIMATION_DURATION:I

    mul-int/2addr v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v2, v3, v4

    .line 284
    .local v2, "offset":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    neg-float v3, v3

    invoke-direct {v0, v7, v7, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 285
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 287
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 290
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 293
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 294
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 296
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 298
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 300
    :cond_1
    return-object v1
.end method

.method private getOpenAnimation(Lcom/samsung/android/glview/GLView;I)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    .line 304
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 305
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 306
    .local v0, "anim":Landroid/view/animation/Animation;
    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANIMATION_DURATION:I

    mul-int/2addr v3, p2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v2, v3, v4

    .line 308
    .local v2, "offset":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    neg-float v3, v3

    invoke-direct {v0, v7, v7, v3, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 309
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 311
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 312
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 313
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 314
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 317
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 318
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 322
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 324
    :cond_1
    return-object v1
.end method

.method private hideQuickMenuItems()V
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method private initQuickMenuItem()V
    .locals 22

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x79

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v20

    .line 339
    .local v20, "mResourceBase":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 340
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    .line 341
    .local v8, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 342
    .local v9, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 343
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    .line 344
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    new-instance v10, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_X:I

    int-to-float v12, v3

    const/4 v13, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_WIDTH:I

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_HEIGHT:I

    int-to-float v15, v3

    const/16 v16, 0x1

    const v17, 0x7f020131

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    .line 349
    .local v10, "anchor":Lcom/samsung/android/glview/GLImage;
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    .end local v8    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v9    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v10    # "anchor":Lcom/samsung/android/glview/GLImage;
    :cond_0
    const/16 v3, 0x78

    invoke-static {v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v21

    .line 354
    .local v21, "resSettingsIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v17, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v21

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x78

    aput v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 356
    .local v17, "settingBundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0x78

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v18

    .line 357
    .local v18, "cmdSettings":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v11, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v13, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_WIDTH:I

    int-to-float v15, v3

    sget v3, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-direct/range {v11 .. v18}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    .line 360
    return-void
.end method

.method private showQuickMenuItems()V
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setAlpha(F)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSideQuickSetting()V
    .locals 4

    .prologue
    .line 96
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    .line 99
    .local v1, "previousItem":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->getCommandId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "previousItem":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method public isAnimationFinished()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->isAnimationFinished()Z

    move-result v0

    return v0
.end method

.method protected isAnimationRunning()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    return v0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refreshItem()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->refreshItem()V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method protected setAnimationRunning(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    .line 271
    return-void
.end method

.method public startQuickSettingCloseAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    const-string v2, "SideQuickSetting"

    const-string v3, "startQuickSettingCloseAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSideQuickSettingState(I)V

    .line 137
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->getCloseAnimation(Lcom/samsung/android/glview/GLView;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 140
    .local v0, "closeAnimation":Landroid/view/animation/Animation;
    if-nez v1, :cond_0

    .line 141
    new-instance v2, Lcom/sec/android/app/camera/menu/SideQuickSetting$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting$1;-><init>(Lcom/sec/android/app/camera/menu/SideQuickSetting;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2, v0, v5}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->startAnimation()V

    .line 138
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 161
    .end local v0    # "closeAnimation":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public startQuickSettingOpenAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 164
    const-string v2, "SideQuickSetting"

    const-string v3, "startQuickSettingOpenAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSideQuickSettingState(I)V

    .line 168
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->getOpenAnimation(Lcom/samsung/android/glview/GLView;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 171
    .local v1, "openAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 172
    new-instance v2, Lcom/sec/android/app/camera/menu/SideQuickSetting$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting$2;-><init>(Lcom/sec/android/app/camera/menu/SideQuickSetting;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->startAnimation()V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "openAnimation":Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 10
    .param p1, "ids"    # [I

    .prologue
    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, "interval":I
    const/4 v6, 0x0

    .line 207
    .local v6, "nextItemPosY":I
    move-object v1, p1

    .line 209
    .local v1, "commandIDs":[I
    array-length v7, v1

    if-eqz v7, :cond_0

    .line 210
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    sget v7, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    array-length v8, v1

    sget v9, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v4, v7, v8

    .line 222
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_6

    .line 224
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    aget v8, v1, v3

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    .line 226
    .local v5, "item":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    if-eqz v5, :cond_5

    .line 227
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setDim(Z)V

    .line 228
    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->refreshItem()V

    .line 229
    const/4 v7, 0x0

    int-to-float v8, v6

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->moveLayoutAbsolute(FF)V

    .line 230
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setOrientation(I)V

    .line 232
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mAnchors:Landroid/util/SparseArray;

    aget v8, v1, v3

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    .line 233
    .local v0, "anchor":Lcom/samsung/android/glview/GLImage;
    if-eqz v0, :cond_1

    .line 234
    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/menu/SideQuickSetting;->ANCHOR_POS_Y_OFFSET:I

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 237
    :cond_1
    sget v7, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    add-int/2addr v7, v4

    add-int/2addr v6, v7

    .line 238
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 241
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 242
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setRotatable(Z)V

    .line 243
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "anchor":Lcom/samsung/android/glview/GLImage;
    .end local v5    # "item":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .end local v3    # "i":I
    :cond_3
    sget-boolean v7, Lcom/sec/android/app/camera/feature/Feature;->FIXED_TYPE_SIDE_QUICK_SETTING_MENU:Z

    if-eqz v7, :cond_4

    .line 214
    sget v7, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    sget v9, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    array-length v8, v1

    div-int v4, v7, v8

    goto :goto_0

    .line 216
    :cond_4
    sget v7, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_HEIGHT:I

    array-length v8, v1

    add-int/lit8 v8, v8, 0x2

    sget v9, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    div-int v4, v7, v8

    .line 217
    sget v7, Lcom/sec/android/app/camera/menu/SideQuickSetting;->SIDE_QUICK_SETTING_ITEM_HEIGHT:I

    add-int v6, v7, v4

    goto :goto_0

    .line 246
    .restart local v3    # "i":I
    .restart local v5    # "item":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    :cond_5
    :try_start_1
    const-string v7, "SideQuickSetting"

    const-string v8, "There\'s no item. please check SideQuickSettingResourceData"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 248
    .end local v5    # "item":Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;
    :catch_0
    move-exception v2

    .line 249
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "SideQuickSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Side bar IndexOut for index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 253
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v7

    if-nez v7, :cond_7

    .line 254
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mSettingButton:Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 258
    :cond_7
    iget-boolean v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsOpened:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 259
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->showQuickMenuItems()V

    .line 263
    :goto_3
    return-void

    .line 261
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->hideQuickMenuItems()V

    goto :goto_3
.end method
