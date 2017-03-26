.class Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ModeListMenu;
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

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu;)V
    .locals 1

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    .line 1181
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/menu/ModeListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ModeListMenu$1;

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1190
    if-nez p2, :cond_a

    .line 1192
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1198
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1201
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

    if-eqz v1, :cond_6

    .line 1202
    :cond_0
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommandWithSub(Ljava/lang/String;ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 1207
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_1
    if-nez v0, :cond_a

    .line 1208
    if-eqz v7, :cond_a

    instance-of v1, v7, Lcom/sec/android/app/camera/command/EmptyCommand;

    if-nez v1, :cond_a

    .line 1209
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$300()F

    move-result v4

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$400()F

    move-result v5

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getDownloaded()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v9

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/ModeItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;IZ)V

    .line 1210
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1211
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 1212
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1213
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v1, :cond_1

    .line 1214
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1215
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1218
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;)V

    .line 1226
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setCheckBoxSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;)V

    .line 1242
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;)I

    move-result v1

    if-ne v1, v8, :cond_7

    .line 1243
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    .line 1244
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1255
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    if-nez p1, :cond_3

    .line 1258
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1259
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1262
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x154

    if-ne v1, v2, :cond_8

    .line 1263
    :cond_4
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    move-object v11, v0

    .line 1279
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_3
    return-object v11

    .line 1195
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->findModeBundle(I)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    move-result-object v6

    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    goto/16 :goto_0

    .line 1204
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    :cond_6
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_1

    .line 1245
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1246
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    .line 1247
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1248
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1250
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 1251
    .local v10, "checkValue":Ljava/lang/Boolean;
    if-eqz v10, :cond_2

    .line 1252
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxSelected(Z)V

    goto/16 :goto_2

    .line 1266
    .end local v10    # "checkValue":Ljava/lang/Boolean;
    :cond_8
    new-instance v11, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1300(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    move-result-object v2

    invoke-direct {v11, v1, v2, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Lcom/samsung/android/glview/GLView;)V

    .line 1267
    .local v11, "dropBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v1, v11}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1268
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1400(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1269
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v1, v11}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1402(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1271
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v11, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDropListener(Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;)V

    .line 1272
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v11, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 1273
    invoke-virtual {v11, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_3

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "dropBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    :cond_a
    move-object v11, p2

    .line 1279
    goto/16 :goto_3
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1402(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1288
    return-void
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .param p1, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$102(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 1298
    return-void
.end method
