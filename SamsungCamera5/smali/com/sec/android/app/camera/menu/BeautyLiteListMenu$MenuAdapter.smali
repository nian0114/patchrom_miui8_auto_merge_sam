.class Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "BeautyLiteListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$300(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 352
    if-nez p2, :cond_1

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$300(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 354
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$400(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .line 355
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-nez v0, :cond_0

    .line 356
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 357
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 358
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$500()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->BEAUTY_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$600()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 359
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$700(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$800(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 361
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setRotatable(Z)V

    .line 362
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setCenterPivot(Z)V

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$400(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method
