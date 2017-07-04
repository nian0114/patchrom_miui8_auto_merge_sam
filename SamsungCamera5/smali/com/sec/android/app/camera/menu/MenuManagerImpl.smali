.class public Lcom/sec/android/app/camera/menu/MenuManagerImpl;
.super Ljava/lang/Object;
.source "MenuManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuManager;


# static fields
.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "MenuManagerImpl"

.field private static final mMenuOrderMap:Landroid/util/SparseIntArray;

.field private static final mMenusLock:Ljava/lang/Object;

.field private static final mViewStackLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

.field private mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/menu/AbstractMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

.field private mShootingModeControllerGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mShootingModeViewGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mShootingmodeRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/menu/AbstractMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

.field private mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    .line 55
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    .line 57
    new-instance v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuResourceDepot;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p4, "rootView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p5, "shootingMode"    # Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    .line 115
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 116
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    .line 120
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 133
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 134
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 135
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 136
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 137
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingmodeRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 138
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingmodeRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 148
    new-instance v0, Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 150
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 151
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 152
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 153
    iput-object p5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 154
    return-void
.end method

.method private clearAllMenus()V
    .locals 6

    .prologue
    .line 916
    const-string v4, "MenuManagerImpl"

    const-string v5, "clearAllMenus"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 919
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 920
    monitor-exit v5

    .line 940
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 924
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    const/4 v3, 0x0

    .line 926
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 927
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 929
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 930
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 931
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 932
    if-eqz v1, :cond_1

    .line 933
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 935
    :cond_1
    const-string v4, "MenuManagerImpl"

    const-string v5, "clearing..."

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 924
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menuId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 931
    .restart local v0    # "i":I
    .restart local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "menuId":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 937
    :cond_2
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 938
    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 939
    monitor-exit v5

    goto :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method private clearInactiveShootingModeViews()V
    .locals 8

    .prologue
    .line 964
    const-string v5, "MenuManagerImpl"

    const-string v6, "clearInactiveShootingModeViews"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 966
    .local v3, "shootingModeViewGroupsClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/glview/GLViewGroup;>;"
    const/4 v2, 0x0

    .line 967
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 968
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 969
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLViewGroup;

    .line 970
    .local v4, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 971
    const-string v5, "MenuManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearing shooting mode views - id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 973
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 974
    .local v0, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 977
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 978
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 967
    .end local v0    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    .end local v4    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    return-void
.end method

.method private clearInvisibleViews()V
    .locals 7

    .prologue
    .line 984
    const-string v4, "MenuManagerImpl"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 987
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 988
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    const/4 v3, 0x0

    .line 990
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 991
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 993
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 994
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 995
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 996
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 997
    const-string v4, "MenuManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 999
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 990
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menuId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 995
    .restart local v0    # "i":I
    .restart local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "menuId":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1003
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    .line 1004
    return-void
.end method

.method private clearShootingModeViewGroup()V
    .locals 5

    .prologue
    .line 943
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 961
    :goto_0
    return-void

    .line 947
    :cond_0
    const/4 v2, 0x0

    .line 948
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 949
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 950
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    .line 951
    .local v3, "viewLayout":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v3, :cond_1

    .line 952
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 953
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 954
    .local v0, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 948
    .end local v0    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 959
    .end local v3    # "viewLayout":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 960
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method private closeVisibleViews()V
    .locals 6

    .prologue
    .line 1007
    const-string v4, "MenuManagerImpl"

    const-string v5, "closeVisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1010
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 1011
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    const/4 v3, 0x0

    .line 1013
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1014
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1016
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1017
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 1018
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1019
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1020
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 1013
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menuId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1018
    .restart local v0    # "i":I
    .restart local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "menuId":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1023
    :cond_1
    return-void
.end method

.method private isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 1027
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1057
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1055
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1027
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xb -> :sswitch_0
        0x3d -> :sswitch_0
        0x4d -> :sswitch_0
        0x4e -> :sswitch_0
        0x4f -> :sswitch_0
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x68 -> :sswitch_0
        0x7f -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x85 -> :sswitch_0
        0x87 -> :sswitch_0
        0x96 -> :sswitch_0
        0xab -> :sswitch_0
        0xbe0 -> :sswitch_0
        0xbe1 -> :sswitch_0
        0xbe2 -> :sswitch_0
        0xbe3 -> :sswitch_0
    .end sparse-switch
.end method

.method private removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 3
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 1062
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 1064
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1066
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1067
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1068
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    .line 1069
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1073
    :goto_0
    return-void

    .line 1064
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1070
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1067
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_0
.end method


# virtual methods
.method public collapseMenu()V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 162
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    .line 167
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v1, v0

    .line 169
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 171
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v2

    .line 174
    :cond_0
    return-void

    .line 162
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public createMenu(I)V
    .locals 20
    .param p1, "menuId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    const/16 v19, 0x0

    .line 181
    .local v19, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 182
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 183
    monitor-exit v4

    move-object/from16 v8, v19

    .line 424
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v8, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    :goto_0
    return-void

    .line 185
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    sparse-switch p1, :sswitch_data_0

    .line 416
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid menu ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 189
    :sswitch_0
    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/BaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 191
    check-cast v3, Lcom/sec/android/app/camera/menu/BaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 193
    .local v18, "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$2;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$2;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    .line 419
    .end local v18    # "initialShootingMode":I
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_1
    if-eqz v2, :cond_0

    .line 420
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 421
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 203
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f4

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 205
    check-cast v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 207
    .restart local v18    # "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$3;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$3;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    .line 214
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 217
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_2
    new-instance v2, Lcom/sec/android/app/camera/menu/SilverBaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f5

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/SilverBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 219
    check-cast v3, Lcom/sec/android/app/camera/menu/SilverBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 221
    .restart local v18    # "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    .line 228
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 231
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 232
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 234
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 236
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 237
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x64

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 239
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 241
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 242
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 244
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 246
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 248
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x7f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x7f

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 250
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 252
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 253
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x77

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x77

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 255
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 257
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 258
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x19

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 260
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 262
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x1004

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 263
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1004

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x1004

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 265
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 267
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 268
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x12

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 270
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 272
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 273
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/FoodSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x80

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x80

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/FoodSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 275
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 277
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x75

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 278
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x75

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x75

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 280
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 282
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 283
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x68

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x68

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 285
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 287
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 288
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x4e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x4e

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 290
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 292
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x4f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 293
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x4f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x4f

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EasyModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 295
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 297
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 298
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x5a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x5a

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 300
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 302
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_11
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 304
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x66

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 307
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 308
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x66

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 311
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 313
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 314
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/TimerListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v10, 0x6

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/TimerListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 316
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 319
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x87

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 320
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x87

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x87

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/MotionPanoramaModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 322
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x87

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 325
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0xab

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 326
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/TimerListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0xab

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0xab

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/TimerListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 328
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0xab

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 331
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 332
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;III)V

    .line 334
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 337
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 338
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x65

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x65

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/app/camera/menu/PictureSizeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;III)V

    .line 340
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 343
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 344
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0xb

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 346
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 349
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 350
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x4d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x4d

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 352
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 355
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_19
    new-instance v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x3d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v8, v19

    .line 356
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 358
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1a
    new-instance v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    const/16 v17, 0x0

    move-object v9, v2

    move-object/from16 v12, p0

    move/from16 v13, p1

    invoke-direct/range {v9 .. v17}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 359
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    move-object/from16 v8, v19

    .line 360
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 362
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 363
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 365
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 368
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 369
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 371
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 374
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 375
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 376
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 378
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 379
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 380
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 382
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 383
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 384
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 386
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 387
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 388
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 390
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 391
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 393
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 395
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 396
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 398
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 400
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 401
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 403
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 405
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 406
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 408
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 410
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 411
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/RecordingMotionSpeedListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x96

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x96

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/RecordingMotionSpeedListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 413
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_15
        0x6 -> :sswitch_12
        0x8 -> :sswitch_5
        0xb -> :sswitch_17
        0x12 -> :sswitch_a
        0x19 -> :sswitch_8
        0x3d -> :sswitch_19
        0x4d -> :sswitch_18
        0x4e -> :sswitch_e
        0x4f -> :sswitch_f
        0x5a -> :sswitch_10
        0x64 -> :sswitch_4
        0x65 -> :sswitch_16
        0x66 -> :sswitch_11
        0x68 -> :sswitch_d
        0x75 -> :sswitch_c
        0x77 -> :sswitch_7
        0x7f -> :sswitch_6
        0x80 -> :sswitch_b
        0x81 -> :sswitch_21
        0x82 -> :sswitch_22
        0x83 -> :sswitch_1a
        0x84 -> :sswitch_1b
        0x85 -> :sswitch_1c
        0x87 -> :sswitch_13
        0x8e -> :sswitch_23
        0x96 -> :sswitch_25
        0xab -> :sswitch_14
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_2
        0xbe0 -> :sswitch_1d
        0xbe1 -> :sswitch_1e
        0xbe2 -> :sswitch_1f
        0xbe3 -> :sswitch_20
        0x1004 -> :sswitch_9
        0x232f -> :sswitch_24
    .end sparse-switch
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 7

    .prologue
    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v1, "log":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 432
    .local v3, "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    sget-object v6, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 433
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 434
    .local v2, "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    .line 437
    .local v4, "viewSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 438
    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 439
    .restart local v3    # "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v5, " => "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v5, "(Z:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    const-string v5, ",P:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 447
    const-string v5, ")\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    .end local v2    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v4    # "viewSize":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 449
    .restart local v0    # "i":I
    .restart local v2    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v4    # "viewSize":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public exists(I)Z
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 455
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 457
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2

    .line 459
    if-nez v0, :cond_0

    .line 460
    const/4 v1, 0x0

    .line 462
    :goto_0
    return v1

    .line 457
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 462
    .restart local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    return-object v0
.end method

.method public getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 6
    .param p1, "menuId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 476
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    if-nez v2, :cond_0

    .line 479
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->createMenu(I)V

    .line 480
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 481
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    .line 482
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    if-nez v2, :cond_0

    .line 484
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid menu ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 476
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 482
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 490
    :cond_0
    return-object v2
.end method

.method protected final getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    return-object v0
.end method

.method protected final getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected getZorderOnTop()I
    .locals 2

    .prologue
    .line 833
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v0

    monitor-exit v1

    .line 839
    :goto_0
    return v0

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 836
    :catch_0
    move-exception v0

    .line 839
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideMenu(I)V
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 501
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 503
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 507
    :cond_0
    return-void

    .line 503
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isActive(I)Z
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 512
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 514
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2

    .line 515
    if-nez v0, :cond_0

    .line 516
    const/4 v1, 0x0

    .line 518
    :goto_0
    return v1

    .line 514
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 518
    .restart local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isBaseMenuInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_0

    .line 525
    const-string v1, "MenuManagerImpl"

    const-string v2, "BaseMenu is not initialized - BaseMenu is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_0
    return v0

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    .line 529
    const-string v1, "MenuManagerImpl"

    const-string v2, "BaseMenu is not initialized - Current shooting mode layout is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewTouchEnabled()Z
    .locals 2

    .prologue
    .line 538
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v0

    monitor-exit v1

    .line 544
    :goto_0
    return v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 541
    :catch_0
    move-exception v0

    .line 544
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x1

    monitor-exit v1

    .line 558
    :goto_0
    return v0

    .line 554
    :cond_0
    monitor-exit v1

    .line 558
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 555
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearAllMenus()V

    .line 564
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearShootingModeViewGroup()V

    .line 566
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    .line 568
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->onDestroy()V

    .line 572
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 574
    :cond_0
    return-void

    .line 568
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onHideMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 849
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 851
    .local v0, "isBaseMenuTopView":Z
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 861
    .end local v0    # "isBaseMenuTopView":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 850
    goto :goto_0

    .line 851
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 858
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 579
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x1

    monitor-exit v1

    .line 587
    :goto_0
    return v0

    .line 583
    :cond_0
    monitor-exit v1

    .line 587
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 584
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 593
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    monitor-exit v1

    .line 601
    :goto_0
    return v0

    .line 597
    :cond_0
    monitor-exit v1

    .line 601
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 598
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 606
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    .line 617
    sget-object v6, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 618
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 619
    .local v2, "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    .line 622
    .local v4, "viewSize":I
    if-lez v4, :cond_1

    .line 623
    new-array v5, v4, [Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2, v5}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 624
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 626
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 627
    .local v3, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    if-eqz v3, :cond_0

    .line 628
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 629
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    goto :goto_0

    .line 619
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v2    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v4    # "viewSize":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 634
    .restart local v2    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v4    # "viewSize":I
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onPause()V

    .line 635
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->closeVisibleViews()V

    .line 641
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    .line 642
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method protected onShowMenu()V
    .locals 4

    .prologue
    .line 869
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    const/4 v0, 0x1

    .line 871
    .local v0, "isNeedHideViewLayout":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    if-eqz v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->hideView(I)V

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 878
    :cond_0
    return-void

    .line 870
    .end local v0    # "isNeedHideViewLayout":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 871
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 651
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onStop()V

    .line 653
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    .line 658
    return-void

    .line 653
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    .line 654
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected popMenu()V
    .locals 2

    .prologue
    .line 882
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 884
    monitor-exit v1

    .line 888
    :goto_0
    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    .line 885
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processBack()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 664
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 666
    .local v0, "isNeedActivityFinsh":Z
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    if-eqz v0, :cond_1

    .line 669
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 687
    .end local v0    # "isNeedActivityFinsh":Z
    :goto_1
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 684
    :catch_0
    move-exception v1

    goto :goto_1

    .line 673
    .restart local v0    # "isNeedActivityFinsh":Z
    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 674
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 675
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 677
    :cond_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 679
    :try_start_6
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0

    .line 680
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 681
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    .line 683
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_0

    .line 677
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_a} :catch_0
.end method

.method protected pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 893
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 895
    .local v1, "lastMenu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 896
    :goto_0
    if-eqz v1, :cond_1

    .line 897
    :try_start_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 898
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 900
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 901
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v1, v0

    .line 902
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 907
    .end local v1    # "lastMenu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v2

    .line 910
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3

    .line 911
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 913
    return-void

    .line 895
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_0

    .line 912
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2
.end method

.method public removeMenu(I)V
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 692
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 694
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 698
    :cond_0
    return-void

    .line 694
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingmodeRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingmodeRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 711
    :cond_2
    return-void
.end method

.method public setHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 716
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 717
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHideAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnHideListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    .prologue
    .line 726
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 727
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnHideListener failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnShowListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    .prologue
    .line 736
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 737
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnShowListener failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneTimeHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 746
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 747
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneTimeHideAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneTimeShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 756
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 757
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneTimeShowAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 10
    .param p1, "shootingModeId"    # I

    .prologue
    const/4 v2, 0x0

    .line 765
    const-string v1, "MenuManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setShootingMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_1

    .line 767
    const-string v1, "MenuManagerImpl"

    const-string v2, "Cannot set shooting mode. BaseMenu is not created. return."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 771
    .local v0, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    .line 772
    .local v3, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    .line 773
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    .end local v0    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 774
    .end local v3    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    .restart local v0    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 775
    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v7, v1

    sget v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v8, v1

    move v5, v2

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 776
    .restart local v3    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object v6, v0

    move-object v7, v3

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    .line 779
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 781
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method public setShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 788
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 789
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 5
    .param p1, "menuId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 798
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 799
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    return-object v1

    .line 801
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMenu failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    throw v0
.end method

.method public showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "hideShootingModeView"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 810
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 811
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    return-object v1

    .line 813
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMenu failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    throw v0
.end method
