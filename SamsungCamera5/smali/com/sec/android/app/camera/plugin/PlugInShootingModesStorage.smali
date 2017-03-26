.class public final Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;,
        Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;,
        Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$OrderComparator;,
        Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;,
        Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    }
.end annotation


# static fields
.field private static final PRELOADED_THUMBNAILS_COUNT:I = 0xf

.field private static final SHOOTING_MODE_MAJOR_VERSION:I = 0x1

.field private static final SHOOTING_MODE_MINOR_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlugInShootingModesStorage"

.field private static mInstance:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;


# instance fields
.field private mBaseResources:Landroid/content/res/Resources;

.field private mModesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    .line 654
    return-void
.end method

.method private declared-synchronized addDefaultMode(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    const/4 v2, 0x0

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Auto"

    const v5, 0x7f080069

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08006d

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02022b

    const v8, 0x7f02022c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, "both"

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;III)V

    .line 389
    .local v1, "autoMode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v17, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    const-string v3, "com.sec.android.app.camera.Auto"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    const/16 v4, 0x12c

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 394
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-nez v3, :cond_0

    .line 395
    new-instance v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    const/4 v3, 0x0

    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Selfie"

    const v6, 0x7f08006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08006c

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f02024f

    const v9, 0x7f020250

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, "both"

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;III)V

    .line 399
    .local v2, "selfiemode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 400
    .local v18, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    const-string v3, "com.sec.android.app.camera.Selfie"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    const/16 v4, 0x154

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v2    # "selfiemode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v18    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 386
    .end local v1    # "autoMode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v17    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    .locals 5
    .param p0, "shootingMode"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 88
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    .line 89
    .local v0, "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v2

    .line 91
    .local v2, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isPreloadedShootingMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 114
    .end local v0    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    .local v1, "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    :goto_0
    return-object v1

    .line 96
    .end local v1    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    .restart local v0    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    :cond_0
    if-eqz v2, :cond_1

    .line 97
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-nez v3, :cond_2

    .line 98
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->INVALID_VERSION_INFORMATION:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 114
    .end local v0    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    .restart local v1    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    goto :goto_0

    .line 99
    .end local v1    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    .restart local v0    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    :cond_2
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-ge v3, v4, :cond_3

    .line 100
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->SHOOTING_MODE_UPDATE_NEEDED:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 101
    :cond_3
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-le v3, v4, :cond_4

    .line 102
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->DEVICE_UPDATE_NEEDED:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 103
    :cond_4
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-ne v3, v4, :cond_1

    .line 104
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-gez v3, :cond_5

    .line 105
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 106
    :cond_5
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-lez v3, :cond_6

    .line 107
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 108
    :cond_6
    iget v3, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-nez v3, :cond_1

    .line 109
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1
.end method

.method private clearAll()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->clearCachedResources()V

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->clearShootingModes()V

    .line 411
    return-void
.end method

.method private declared-synchronized clearCachedResources()V
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    monitor-exit p0

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->clearAll()V

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    .line 123
    return-void
.end method

.method private declared-synchronized getCameraFrontShootingModeOrder(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "allowedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v7, "orderString":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v6, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 435
    iget-object v8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 436
    .local v0, "commandId":I
    iget-object v8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 438
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v4, :cond_1

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 442
    .local v5, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;

    iget v8, v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    iget v9, v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->frontOrder:I

    iget-object v10, v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-direct {v3, v8, v9, v0, v10}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;-><init>(IIILjava/lang/String;)V

    .line 443
    .local v3, "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 431
    .end local v0    # "commandId":I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v5    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v6    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;>;"
    .end local v7    # "orderString":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 447
    .restart local v1    # "i":I
    .restart local v6    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;>;"
    .restart local v7    # "orderString":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    new-instance v8, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$OrderComparator;

    invoke-direct {v8}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$OrderComparator;-><init>()V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;

    .line 450
    .restart local v3    # "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    iget v8, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->commandId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    iget-object v8, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 454
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_3
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 459
    .end local v3    # "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    monitor-exit p0

    return-object v8
.end method

.method private declared-synchronized getCameraShootingModeOrder(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "allowedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v7, "orderString":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v6, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 477
    iget-object v8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 478
    .local v0, "commandId":I
    iget-object v8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 480
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v4, :cond_1

    .line 476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 484
    .local v5, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;

    iget v8, v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    iget v9, v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    iget-object v10, v5, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-direct {v3, v8, v9, v0, v10}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;-><init>(IIILjava/lang/String;)V

    .line 485
    .local v3, "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 468
    .end local v0    # "commandId":I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v5    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v6    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;>;"
    .end local v7    # "orderString":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 489
    .restart local v1    # "i":I
    .restart local v6    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;>;"
    .restart local v7    # "orderString":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    new-instance v8, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$OrderComparator;

    invoke-direct {v8}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$OrderComparator;-><init>()V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;

    .line 492
    .restart local v3    # "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    iget v8, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->commandId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    iget-object v8, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 496
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_3
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 502
    .end local v3    # "info":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    monitor-exit p0

    return-object v8
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
    .locals 2

    .prologue
    .line 129
    const-class v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    invoke-direct {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    .line 133
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getModesCopy()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 143
    const-class v6, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    .line 144
    .local v1, "instance":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
    iget-object v5, v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 145
    .local v2, "itemsClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    iget-object v5, v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 147
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 148
    iget-object v5, v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 150
    .local v3, "key":I
    new-instance v7, Ljava/util/HashMap;

    iget-object v5, v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v7, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "key":I
    :cond_0
    monitor-exit v6

    return-object v2

    .line 143
    .end local v0    # "i":I
    .end local v2    # "itemsClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private declared-synchronized getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    .line 523
    :cond_1
    if-nez p2, :cond_3

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .local v1, "res":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 526
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 527
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    .line 530
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 532
    .restart local v1    # "res":Landroid/content/res/Resources;
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 534
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 539
    :goto_1
    if-eqz v1, :cond_2

    .line 540
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 515
    .end local v1    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 535
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .locals 2
    .param p0, "commandId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getModesMap(I)Ljava/util/Map;

    move-result-object v0

    .line 177
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 185
    :goto_0
    return-object v1

    .line 182
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    goto :goto_0

    .line 185
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShootingModeExists(ILjava/lang/String;)Z
    .locals 3
    .param p0, "commandId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 197
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    if-eqz v0, :cond_0

    .line 198
    const/4 v1, 0x1

    .line 201
    :goto_0
    return v1

    .line 200
    :cond_0
    const-string v1, "PlugInShootingModesStorage"

    const-string v2, "isShootingModeExists return : false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadModeLibrary(ILjava/lang/String;)V
    .locals 5
    .param p0, "shootingModeCommand"    # I
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getModesMap(I)Ljava/util/Map;

    move-result-object v1

    .line 217
    .local v1, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 218
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 220
    .local v0, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    if-eqz v0, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 226
    .end local v0    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v1    # "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_0
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method


# virtual methods
.method public clearResources()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->clearCachedResources()V

    .line 234
    return-void
.end method

.method public declared-synchronized clearShootingModes()V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 247
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 248
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;

    move-result-object v0

    .line 250
    .local v0, "allowedItemsBackCamera":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getCameraShootingModeOrder(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "modeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v5, "modeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 263
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 265
    .local v0, "commandId":Ljava/lang/Integer;
    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x154

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 268
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 271
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 272
    .local v4, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    iget v6, v4, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    .end local v0    # "commandId":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v4    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v5    # "modeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 276
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v5    # "modeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit p0

    return-object v5
.end method

.method public getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 280
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 281
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;

    move-result-object v0

    .line 283
    .local v0, "allowedItemsFrontCamera":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getCameraFrontShootingModeOrder(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getModesListsAt(I)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 296
    .local v0, "modeCommand":I
    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 298
    .local v1, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 295
    .end local v0    # "modeCommand":I
    .end local v1    # "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getModesListsCount()I
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getModesMap(I)Ljava/util/Map;
    .locals 2
    .param p1, "commandId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 316
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 314
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPackageNativeLibraryDirMapping()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "com.sec.android.app.camera"

    const-string v7, "libseccameracore.so"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v6, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    if-eqz v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 339
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 340
    iget-object v6, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 342
    .local v4, "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 343
    .local v3, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    iget-object v6, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 331
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v4    # "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 339
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .restart local v5    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v5    # "size":I
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized setShootingModes(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "modesList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->clearCachedResources()V

    .line 361
    if-nez p2, :cond_0

    new-instance p2, Landroid/util/SparseArray;

    .end local p2    # "modesList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    .line 362
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->addDefaultMode(Landroid/content/Context;)V

    .line 364
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v5, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v6, 0x0

    .local v6, "numberOfCachedModes":I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    .line 368
    iget-object v7, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 369
    .local v2, "key":I
    iget-object v7, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->mModesList:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 371
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    if-nez v3, :cond_2

    .line 366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .line 375
    .local v4, "modeToCache":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    add-int/lit8 v6, v6, 0x1

    .line 377
    goto :goto_1

    .line 379
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v4    # "modeToCache":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    :cond_3
    monitor-exit p0

    return-void

    .line 359
    .end local v0    # "i":I
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v6    # "numberOfCachedModes":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
