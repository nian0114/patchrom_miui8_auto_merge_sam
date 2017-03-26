.class Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "EasyModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EasyModeListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
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

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    .line 406
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$000(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

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

    .line 415
    if-nez p2, :cond_1

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$000(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 418
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 420
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 423
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$100()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->MODE_MENU_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$200()I

    move-result v3

    int-to-float v5, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/ModeItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;IZ)V

    .line 424
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$300(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$300(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 427
    new-instance v1, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;)V

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    if-nez p1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EasyModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/EasyModeListMenu;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 444
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 450
    return-void
.end method
