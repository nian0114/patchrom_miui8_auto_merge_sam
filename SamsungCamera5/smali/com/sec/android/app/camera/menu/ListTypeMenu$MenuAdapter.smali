.class Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "ListTypeMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ListTypeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ListTypeMenu;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ListTypeMenu;Lcom/sec/android/app/camera/menu/ListTypeMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ListTypeMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ListTypeMenu$1;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ListTypeMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ListTypeMenu;->access$100(Lcom/sec/android/app/camera/menu/ListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 324
    if-nez p2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ListTypeMenu;->access$100(Lcom/sec/android/app/camera/menu/ListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 326
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/ListTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 327
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 328
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ListItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ListTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ListTypeMenu;->mItemWidth:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ListTypeMenu;->access$200(Lcom/sec/android/app/camera/menu/ListTypeMenu;)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ListTypeMenu;->mItemHeight:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ListTypeMenu;->access$300(Lcom/sec/android/app/camera/menu/ListTypeMenu;)F

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/ListItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 329
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ListTypeMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ListTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/ListTypeMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ListItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ListTypeMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ListTypeMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ListTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/ListTypeMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ListItem;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 334
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ListItem;
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
    .line 340
    return-void
.end method
