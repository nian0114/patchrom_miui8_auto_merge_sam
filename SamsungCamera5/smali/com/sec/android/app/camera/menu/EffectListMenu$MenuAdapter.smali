.class Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "EffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/EffectListMenu;Lcom/sec/android/app/camera/menu/EffectListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/EffectListMenu$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

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
    .line 257
    if-nez p2, :cond_6

    .line 258
    const/4 v5, 0x0

    .line 260
    .local v5, "viewWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 261
    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$200()I

    move-result v2

    int-to-float v5, v2

    .line 266
    :goto_0
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$300()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 267
    .local v1, "lineView":Lcom/samsung/android/glview/GLViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 268
    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setHeight(F)V

    .line 272
    :goto_1
    const/4 v15, 0x0

    .local v15, "i":I
    mul-int/lit8 v16, p1, 0x1

    .local v16, "resourceIndex":I
    :goto_2
    const/4 v2, 0x1

    if-ge v15, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v12

    .line 274
    .local v12, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .line 276
    .local v6, "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    if-eqz v6, :cond_0

    .line 277
    const-string v2, "EffectListMenu"

    const-string v3, "Effect item is not inialized, initialize item"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->clear()V

    .line 279
    const/4 v6, 0x0

    .line 282
    :cond_0
    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v13

    .line 283
    .local v13, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v13, :cond_3

    .line 284
    new-instance v6, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v7, v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v8, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$300()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v15

    int-to-float v9, v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$200()I

    move-result v2

    int-to-float v10, v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400()I

    move-result v2

    int-to-float v11, v2

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 286
    .restart local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mMute:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectListMenu;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setMute(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$700(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 289
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setTag(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectListMenu;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 272
    add-int/lit8 v15, v15, 0x1

    mul-int/lit8 v2, p1, 0x1

    add-int v16, v2, v15

    goto/16 :goto_2

    .line 263
    .end local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .end local v12    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v13    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v15    # "i":I
    .end local v16    # "resourceIndex":I
    :cond_1
    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$200()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$300()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v5, v2

    goto/16 :goto_0

    .line 270
    .restart local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$300()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setHeight(F)V

    goto/16 :goto_1

    .line 293
    .restart local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .restart local v12    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v13    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v15    # "i":I
    .restart local v16    # "resourceIndex":I
    :cond_3
    const/4 v14, 0x0

    .line 294
    .local v14, "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    new-instance v14, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    .end local v14    # "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v14, v2, v3, v4, v7}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    .line 295
    .restart local v14    # "emptyitem":Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;
    if-eqz v14, :cond_4

    .line 296
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setMute(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$700(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 305
    .end local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v5    # "viewWidth":F
    .end local v6    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
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

    .line 303
    goto :goto_3

    .end local v1    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v5    # "viewWidth":F
    .end local v15    # "i":I
    .end local v16    # "resourceIndex":I
    :cond_6
    move-object/from16 v14, p2

    .line 305
    goto :goto_3
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method
