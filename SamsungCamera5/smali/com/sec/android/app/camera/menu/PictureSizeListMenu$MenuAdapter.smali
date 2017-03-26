.class Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "PictureSizeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/PictureSizeListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;Lcom/sec/android/app/camera/menu/PictureSizeListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/PictureSizeListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/PictureSizeListMenu$1;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$100(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

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

    .line 331
    if-nez p2, :cond_0

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$100(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 333
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 334
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 335
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mItemWidth:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$200(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mItemHeight:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$300(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)F

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mListType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$400(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)I

    move-result v8

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 336
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$500(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PictureSizeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;->access$500(Lcom/sec/android/app/camera/menu/PictureSizeListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 341
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/PictureSizeListItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method
