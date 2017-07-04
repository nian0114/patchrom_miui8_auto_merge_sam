.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 402
    if-nez p2, :cond_6

    .line 403
    const/4 v5, 0x0

    .line 405
    .local v5, "viewWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 406
    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$200()I

    move-result v2

    int-to-float v5, v2

    .line 411
    :goto_0
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$400()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 412
    .local v1, "lineView":Lcom/samsung/android/glview/GLViewGroup;
    const/4 v15, 0x0

    .local v15, "i":I
    mul-int/lit8 v16, p1, 0x3

    .local v16, "resourceIndex":I
    :goto_1
    const/4 v2, 0x3

    if-ge v15, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v12

    .line 414
    .local v12, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    .line 416
    .local v6, "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-eqz v6, :cond_0

    .line 417
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "Effect item is not inialized, initialize item"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->clear()V

    .line 419
    const/4 v6, 0x0

    .line 422
    :cond_0
    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v13

    .line 423
    .local v13, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v13, :cond_3

    .line 424
    new-instance v6, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v7, v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v8, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$400()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v15

    int-to-float v9, v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$200()I

    move-result v2

    int-to-float v10, v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$400()I

    move-result v2

    int-to-float v11, v2

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/widget/gl/EffectItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 426
    .restart local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMute:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setMute(Z)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 429
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x7f

    :goto_2
    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setTag(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 412
    add-int/lit8 v15, v15, 0x1

    mul-int/lit8 v2, p1, 0x3

    add-int v16, v2, v15

    goto/16 :goto_1

    .line 408
    .end local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v12    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v13    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v15    # "i":I
    .end local v16    # "resourceIndex":I
    :cond_1
    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$200()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v5, v2

    goto/16 :goto_0

    .line 429
    .restart local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .restart local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .restart local v12    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v13    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v15    # "i":I
    .restart local v16    # "resourceIndex":I
    :cond_2
    const/16 v2, 0x8

    goto :goto_2

    .line 433
    :cond_3
    const/4 v14, 0x0

    .line 434
    .local v14, "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    new-instance v14, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .end local v14    # "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v14, v2, v3, v4, v7}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    .line 435
    .restart local v14    # "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    if-eqz v14, :cond_4

    .line 436
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setMute(Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 445
    .end local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v5    # "viewWidth":F
    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v12    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v13    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v14    # "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    .end local v15    # "i":I
    .end local v16    # "resourceIndex":I
    :cond_4
    :goto_3
    return-object v14

    .restart local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .restart local v5    # "viewWidth":F
    .restart local v15    # "i":I
    .restart local v16    # "resourceIndex":I
    :cond_5
    move-object v14, v1

    .line 443
    goto :goto_3

    .end local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v5    # "viewWidth":F
    .end local v15    # "i":I
    .end local v16    # "resourceIndex":I
    :cond_6
    move-object/from16 v14, p2

    .line 445
    goto :goto_3
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method
