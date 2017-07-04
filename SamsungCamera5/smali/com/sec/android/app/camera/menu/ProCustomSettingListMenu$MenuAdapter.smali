.class Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "ProCustomSettingListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$1;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$100(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/16 v11, 0x1004

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 261
    if-nez p2, :cond_2

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$100(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 264
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemResourceType:I
    invoke-static {v1, v10}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$202(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;I)I

    .line 270
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/CustomItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$300()I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemHeight:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$400(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)F

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemResourceType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$200(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)I

    move-result v8

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    move v3, v2

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/CustomItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;III)V

    .line 271
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setMute(Z)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$500(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 274
    new-instance v1, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->setCustomItemSelectListener(Lcom/sec/android/app/camera/widget/gl/CustomItem$CustomItemSelectListener;)V

    .line 281
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-ne v1, v11, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CustomItem;->addDividerLine()V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$600(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/CustomItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :goto_1
    return-object v0

    .line 267
    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->mItemResourceType:I
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->access$202(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;I)I

    goto :goto_0

    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_2
    move-object v0, p2

    .line 288
    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
