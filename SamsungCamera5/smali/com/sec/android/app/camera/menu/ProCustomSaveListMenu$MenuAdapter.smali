.class Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "ProCustomSaveListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$100(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

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
    const/4 v2, 0x0

    .line 337
    if-nez p2, :cond_1

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$100(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 340
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$200()I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemHeight:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$300(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)F

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemResourceType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$400(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)I

    move-result v8

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    move v3, v2

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/CustomItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;III)V

    .line 341
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setMute(Z)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$500(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setSelected(Z)V

    .line 345
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->refreshView()V

    .line 347
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setCustomItemSelectListener(Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;)V

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->access$700(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method
