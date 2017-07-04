.class public Lcom/sec/android/app/camera/menu/EasySideQuickSetting;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "EasySideQuickSetting.java"


# static fields
.field private static final ITEM_HEIGHT:I

.field private static final ITEM_PADDING_Y:I

.field private static final ITEM_WIDTH:I

.field private static final MENU_HEIGHT:I


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentAddItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

.field private mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

.field private mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

.field private mQuickMenuItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f09031c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    .line 41
    const v0, 0x7f09031b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    .line 42
    const v0, 0x7f09031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_PADDING_Y:I

    .line 43
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_PADDING_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->MENU_HEIGHT:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V
    .locals 29
    .param p1, "activityCamera"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 54
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    .line 46
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    .line 56
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 59
    const/16 v2, 0xbc4

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v26

    .line 60
    .local v26, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc4

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v26

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 62
    .local v8, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xbc4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 64
    .local v9, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    const/16 v2, 0xbc5

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v27

    .line 69
    .local v27, "resIDsFrontFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc5

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 70
    .local v16, "bundleFrontFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xbc5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 72
    .local v17, "cmdFrontFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/16 v2, 0xbc3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v28

    .line 79
    .local v28, "resIDsHelp":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v24, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc3

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 82
    .local v24, "bundleHelp":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xbc3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v25

    .line 83
    .local v25, "cmdHelp":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v18, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->MENU_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_PADDING_Y:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    sget v2, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 87
    .end local v24    # "bundleHelp":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v25    # "cmdHelp":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v28    # "resIDsHelp":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    return-void
.end method

.method private showQuickMenuItems()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setAlpha(F)V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSideQuickSetting()V
    .locals 3

    .prologue
    .line 90
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 93
    .local v1, "previousItem":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "previousItem":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 97
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 6
    .param p1, "ids"    # [I

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 109
    :cond_0
    :goto_0
    move-object v0, p1

    .line 111
    .local v0, "commandIDs":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 113
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setDim(Z)V

    .line 115
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setOrientation(I)V

    .line 116
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "commandIDs":[I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    goto :goto_0

    .line 120
    .restart local v0    # "commandIDs":[I
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->showQuickMenuItems()V

    .line 121
    return-void
.end method
