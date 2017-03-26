.class Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "BeautyListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;Lcom/sec/android/app/camera/menu/BeautyListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/BeautyListMenu$1;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$600(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 624
    if-nez p2, :cond_2

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$600(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 626
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$700(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .line 627
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-nez v0, :cond_0

    .line 628
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 629
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 630
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v3, 0x1967

    if-ne v1, v3, :cond_1

    .line 631
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$800()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$900()I

    move-result v3

    int-to-float v5, v3

    const/4 v8, 0x2

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 633
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->updateToggleButton(I)V

    .line 637
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1000(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1100(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 639
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setRotatable(Z)V

    .line 640
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setCenterPivot(Z)V

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$700(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_1
    return-object v0

    .line 635
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$800()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$900()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    goto :goto_0

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    move-object v0, p2

    .line 646
    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method
