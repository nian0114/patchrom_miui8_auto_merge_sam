.class Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;
.super Ljava/lang/Object;
.source "VideoCollageTypeMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;->this$1:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$1;

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;->this$1:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->access$900(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 626
    if-nez p2, :cond_0

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;->this$1:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mTypeGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->access$900(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 628
    .local v0, "group":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;->this$1:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->access$1000(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper$MenuAdapter;->this$1:Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;

    # getter for: Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;->access$1000(Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu$VideoCollageTypeMenuWrapper;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 632
    .end local v0    # "group":Lcom/samsung/android/glview/GLViewGroup;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method
