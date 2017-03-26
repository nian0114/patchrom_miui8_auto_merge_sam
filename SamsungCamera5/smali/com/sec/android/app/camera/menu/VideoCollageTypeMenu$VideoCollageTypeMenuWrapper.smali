.class Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;
.super Lcom/samsung/android/glview/GLTitleDecorator;
.source "VideoCollageTypeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCollageTypeMenuWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;
    }
.end annotation


# instance fields
.field private mList:Lcom/samsung/android/glview/GLList;

.field private mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTypeGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 8
    .param p2, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "cameraId"    # I

    .prologue
    .line 570
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 571
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLTitleDecorator;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    .line 573
    if-nez p7, :cond_1

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    iget-object v2, p1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$000()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$100()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    iget-object v2, p1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$000()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$100()I

    move-result v4

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$200()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    iget-object v2, p1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$000()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$100()I

    move-result v4

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$200()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    .line 583
    .local v6, "group":Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;
    invoke-virtual {v6, p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->setTypeSelectedListener(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$OnTypeSelectedListener;)V

    goto :goto_1

    .line 577
    .end local v6    # "group":Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    iget-object v2, p1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$000()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$100()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    iget-object v2, p1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$000()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$100()I

    move-result v4

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_OFFSET:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$200()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->initView()V

    .line 587
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    .line 602
    const v0, 0x7f02008e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->setNinePatchBackground(I)Z

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$402(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 605
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$500()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTitleGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->setTitle(Lcom/samsung/android/glview/GLView;)V

    .line 608
    new-instance v0, Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$000()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->SCREEN_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$600()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->menuPadding:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$400(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setScrollBarResource(I)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    sget v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setScrollBarPadding(F)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    new-instance v1, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->getHeight()F

    move-result v0

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->TYPE_MENU_BOTTOM_PADDING:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$800()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->setHeight(F)V

    .line 616
    return-void
.end method


# virtual methods
.method public onTypeSelected(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->this$0:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    # invokes: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->refreshButtonSelected(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;->access$300(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;I)V

    .line 592
    return-void
.end method

.method public refreshButtonSelected(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 595
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;

    .line 596
    .local v0, "group":Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;->refreshButtonSelected(I)V

    goto :goto_0

    .line 598
    .end local v0    # "group":Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeGroup;
    :cond_0
    return-void
.end method
