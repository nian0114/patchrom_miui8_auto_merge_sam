.class Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "ModeInfoListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private lastPosition:I

.field private final mItemList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            "Lcom/sec/android/app/camera/widget/gl/ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field preItem:Lcom/samsung/android/glview/GLView;

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)V
    .locals 1

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->lastPosition:I

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    .line 358
    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->lastPosition:I

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 368
    if-nez p2, :cond_5

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 370
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 373
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v10

    .line 375
    .local v10, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    iget-object v1, v10, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommandWithSub(Ljava/lang/String;ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 380
    .end local v10    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_0
    if-nez v0, :cond_5

    .line 381
    if-eqz v7, :cond_2

    instance-of v1, v7, Lcom/sec/android/app/camera/command/EmptyCommand;

    if-nez v1, :cond_2

    .line 382
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_WIDTH:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$200()F

    move-result v4

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->MODE_INFO_LIST_ITEM_HEIGHT:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$300()F

    move-result v5

    const/4 v8, 0x2

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/ModeItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;IZ)V

    .line 383
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$400(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$400(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 386
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;)V

    .line 397
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->lastPosition:I

    if-ne p1, v1, :cond_4

    :goto_1
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDividerEnabled(Z)V

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    if-nez p1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$600(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->preItem:Lcom/samsung/android/glview/GLView;

    .line 403
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->preItem:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->preItem:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 405
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->preItem:Lcom/samsung/android/glview/GLView;

    .line 410
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    :goto_2
    return-object v0

    .line 377
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto :goto_0

    .line 397
    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_5
    move-object v0, p2

    .line 410
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 416
    return-void
.end method
