.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final DEBUG_ELASTIC:Z

.field private cookieMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isElasticEnabled:Z

.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mElasticAssets:Landroid/content/res/AssetManager;

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field mResConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ResourcesManager;->DEBUG_ELASTIC:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ResourcesManager;->isElasticEnabled:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateThemeResources()V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .local v9, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/Resources;

    .local v14, "r":Landroid/content/res/Resources;
    if-eqz v14, :cond_6

    iget v0, v14, Landroid/content/res/Resources;->mResUserId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentPackageName":Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v8, 0x1

    .local v8, "isOtherPackageResource":Z
    :goto_1
    if-nez v4, :cond_4

    const-string v17, "android"

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v7, 0x1

    .local v7, "isNotSystemResource":Z
    :goto_2
    if-nez v8, :cond_0

    if-eqz v7, :cond_2

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .local v12, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v13, 0x0

    .local v13, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_3
    if-eqz v13, :cond_2

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "resourceDirs":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v11, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_5

    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_5

    .end local v4    # "currentPackageName":Ljava/lang/String;
    .end local v7    # "isNotSystemResource":Z
    .end local v8    # "isOtherPackageResource":Z
    .end local v11    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v16    # "resourceDirs":[Ljava/lang/String;
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .restart local v4    # "currentPackageName":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8    # "isOtherPackageResource":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "isNotSystemResource":Z
    .restart local v11    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v16    # "resourceDirs":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    iget-object v0, v14, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;)I

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_5
    if-ge v6, v10, :cond_2

    aget-object v15, v3, v6

    .local v15, "resourceDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "currentPackageName":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "isNotSystemResource":Z
    .end local v8    # "isOtherPackageResource":Z
    .end local v10    # "len$":I
    .end local v11    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v15    # "resourceDir":Ljava/lang/String;
    .end local v16    # "resourceDirs":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_4

    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v14    # "r":Landroid/content/res/Resources;
    :cond_7
    return-void

    .restart local v4    # "currentPackageName":Ljava/lang/String;
    .restart local v7    # "isNotSystemResource":Z
    .restart local v8    # "isOtherPackageResource":Z
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v17

    goto :goto_3
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    move-result v0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z
    .locals 33
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "force"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    new-instance v30, Landroid/content/res/Configuration;

    invoke-direct/range {v30 .. v30}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v30

    if-nez v30, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const/16 v30, 0x0

    :goto_0
    return v30

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v7

    .local v7, "changes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->clear()V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v9

    .local v9, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    .local v4, "activityThread":Landroid/app/ActivityThread;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getLastIntendedActivityToken()Landroid/os/IBinder;

    move-result-object v29

    .local v29, "token":Landroid/os/IBinder;
    if-eqz v29, :cond_d

    :try_start_0
    invoke-interface/range {v29 .. v29}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_d

    invoke-static/range {v29 .. v29}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v5

    .local v5, "appToken":Landroid/view/IApplicationToken;
    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/view/IApplicationToken;->hasSubWindow()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface {v5}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v15

    .local v15, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v15, v9}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5    # "appToken":Landroid/view/IApplicationToken;
    .end local v15    # "info":Landroid/view/DisplayInfo;
    .end local v29    # "token":Landroid/os/IBinder;
    :cond_2
    :goto_2
    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v7, v7, 0xd00

    :cond_4
    move-object/from16 v0, p1

    invoke-static {v7, v0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/16 v28, 0x0

    .local v28, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    add-int/lit8 v13, v30, -0x1

    .local v13, "i":I
    :goto_3
    if-ltz v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/ResourcesKey;

    .local v19, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/res/Resources;

    .local v25, "r":Landroid/content/res/Resources;
    if-eqz v25, :cond_1e

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Resources;->mResUserId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v30

    if-nez v30, :cond_8

    invoke-static {v7}, Landroid/content/res/Configuration;->needToUpdateOverlays(I)Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .local v8, "currentPackageName":Ljava/lang/String;
    if-eqz v8, :cond_e

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_e

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_e

    const/16 v18, 0x1

    .local v18, "isOtherPackageResource":Z
    :goto_4
    if-nez v8, :cond_f

    const-string v30, "android"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_f

    const/16 v17, 0x1

    .local v17, "isNotSystemResource":Z
    :goto_5
    if-nez v18, :cond_6

    if-eqz v17, :cond_8

    :cond_6
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v23

    .local v23, "packageManager":Landroid/content/pm/IPackageManager;
    const/16 v24, 0x0

    .local v24, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    :goto_6
    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    move-object/from16 v27, v0

    .local v27, "resourceDirs":[Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v21, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v27, :cond_7

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v30, v0

    if-nez v30, :cond_10

    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-nez v30, :cond_10

    .end local v8    # "currentPackageName":Ljava/lang/String;
    .end local v17    # "isNotSystemResource":Z
    .end local v18    # "isOtherPackageResource":Z
    .end local v21    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v24    # "pi":Landroid/content/pm/PackageInfo;
    .end local v27    # "resourceDirs":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v19

    iget v10, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .local v10, "displayId":I
    if-nez v10, :cond_11

    const/16 v16, 0x1

    .local v16, "isDefaultDisplay":Z
    :goto_7
    const/16 v22, 0x0

    .local v22, "overrideMetrics":Landroid/util/DisplayMetrics;
    move-object v11, v9

    .local v11, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v12

    .local v12, "hasOverrideConfiguration":Z
    if-eqz v16, :cond_9

    if-eqz v12, :cond_1d

    :cond_9
    if-nez v28, :cond_a

    new-instance v28, Landroid/content/res/Configuration;

    .end local v28    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct/range {v28 .. v28}, Landroid/content/res/Configuration;-><init>()V

    .restart local v28    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_a
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-nez v16, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_b
    if-eqz v12, :cond_c

    sget-boolean v30, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v30, :cond_1b

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Configuration;->isStackOverrideConfig()Z

    move-result v30

    if-eqz v30, :cond_1b

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFromStackOverrideConfig(Landroid/content/res/Configuration;)I

    new-instance v22, Landroid/util/DisplayMetrics;

    .end local v22    # "overrideMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .restart local v22    # "overrideMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_12

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    :goto_8
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_13

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_14

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    :goto_a
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_15

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v30, v0

    :goto_b
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    :cond_c
    :goto_c
    sget-boolean v30, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v30, :cond_1c

    if-eqz v22, :cond_1c

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .end local v10    # "displayId":I
    .end local v11    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "hasOverrideConfiguration":Z
    .end local v16    # "isDefaultDisplay":Z
    .end local v22    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :goto_d
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_3

    .end local v13    # "i":I
    .end local v19    # "key":Landroid/content/res/ResourcesKey;
    .end local v25    # "r":Landroid/content/res/Resources;
    .end local v28    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v29    # "token":Landroid/os/IBinder;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v29    # "token":Landroid/os/IBinder;
    .restart local v8    # "currentPackageName":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v19    # "key":Landroid/content/res/ResourcesKey;
    .restart local v25    # "r":Landroid/content/res/Resources;
    .restart local v28    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_4

    .restart local v18    # "isOtherPackageResource":Z
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .restart local v17    # "isNotSystemResource":Z
    .restart local v21    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v24    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v27    # "resourceDirs":[Ljava/lang/String;
    :cond_10
    const-string v30, "ResourcesManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "removeOverlayPath "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v30

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;)I

    if-eqz v27, :cond_8

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v30, v0

    if-lez v30, :cond_8

    move-object/from16 v6, v27

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_e
    move/from16 v0, v20

    if-ge v14, v0, :cond_8

    aget-object v26, v6, v14

    .local v26, "resourceDir":Ljava/lang/String;
    const-string v30, "ResourcesManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Adding overlay path "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " for resources "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "--"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "currentPackageName":Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "isNotSystemResource":Z
    .end local v18    # "isOtherPackageResource":Z
    .end local v20    # "len$":I
    .end local v21    # "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v24    # "pi":Landroid/content/pm/PackageInfo;
    .end local v26    # "resourceDir":Ljava/lang/String;
    .end local v27    # "resourceDirs":[Ljava/lang/String;
    .restart local v10    # "displayId":I
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_7

    .restart local v11    # "dm":Landroid/util/DisplayMetrics;
    .restart local v12    # "hasOverrideConfiguration":Z
    .restart local v16    # "isDefaultDisplay":Z
    .restart local v22    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_12
    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    goto/16 :goto_8

    :cond_13
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    goto/16 :goto_9

    :cond_14
    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v30, v0

    goto/16 :goto_a

    :cond_15
    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    :goto_f
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    :goto_10
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_19

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    :goto_11
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v30, v0

    :goto_12
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    goto/16 :goto_c

    :cond_17
    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    goto :goto_f

    :cond_18
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    goto :goto_10

    :cond_19
    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move/from16 v30, v0

    goto :goto_11

    :cond_1a
    iget v0, v11, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    move/from16 v30, v0

    goto :goto_12

    :cond_1b
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_d

    :cond_1d
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_d

    .end local v10    # "displayId":I
    .end local v11    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "hasOverrideConfiguration":Z
    .end local v16    # "isDefaultDisplay":Z
    .end local v22    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto/16 :goto_d

    .end local v19    # "key":Landroid/content/res/ResourcesKey;
    .end local v25    # "r":Landroid/content/res/Resources;
    :cond_1f
    if-eqz v7, :cond_20

    const/16 v30, 0x1

    goto/16 :goto_0

    :cond_20
    const/16 v30, 0x0

    goto/16 :goto_0

    .restart local v8    # "currentPackageName":Ljava/lang/String;
    .restart local v17    # "isNotSystemResource":Z
    .restart local v18    # "isOtherPackageResource":Z
    .restart local v19    # "key":Landroid/content/res/ResourcesKey;
    .restart local v23    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v24    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v25    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v30

    goto/16 :goto_6

    .end local v8    # "currentPackageName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v17    # "isNotSystemResource":Z
    .end local v18    # "isOtherPackageResource":Z
    .end local v19    # "key":Landroid/content/res/ResourcesKey;
    .end local v23    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v24    # "pi":Landroid/content/pm/PackageInfo;
    .end local v25    # "r":Landroid/content/res/Resources;
    .end local v28    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v29    # "token":Landroid/os/IBinder;
    :catch_1
    move-exception v30

    goto/16 :goto_2
.end method

.method public final applyDisplayMetricsToResourcesLocked(Landroid/view/DisplayInfo;)V
    .locals 9
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v6, v8

    iput v6, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v4}, Landroid/content/res/Resources;->updateSystemDisplayMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .local v3, "key":Landroid/content/res/ResourcesKey;
    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .local v5, "r":Landroid/content/res/Resources;
    iget v0, v3, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .local v0, "displayId":I
    if-nez v0, :cond_1

    const/4 v2, 0x1

    .local v2, "isDefaultDisplay":Z
    :goto_1
    if-eqz v5, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->updateDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "isDefaultDisplay":Z
    :cond_1
    move v2, v7

    goto :goto_1

    .restart local v2    # "isDefaultDisplay":Z
    :cond_2
    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "displayId":I
    .end local v2    # "isDefaultDisplay":Z
    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_3
    return-void
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void

    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "display":Landroid/view/Display;
    :goto_1
    return-object v0

    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfiguration(I)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;Z)V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method public getResIdOffset(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "cookie":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    iget-object v2, v2, Landroid/content/res/AssetManager;->elasticAppCookieOffset:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 11
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;ILandroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 37
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .param p10, "token"    # Landroid/os/IBinder;

    .prologue
    move-object/from16 v0, p7

    iget v7, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v7, "scale":F
    if-eqz p6, :cond_0

    new-instance v25, Landroid/content/res/Configuration;

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v25, "overrideConfigCopy":Landroid/content/res/Configuration;
    :goto_0
    new-instance v3, Landroid/content/res/ResourcesKey;

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p9

    invoke-direct/range {v3 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FI)V

    .local v3, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    :try_start_0
    const-string v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopLevelResources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " running in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rsrc of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/ref/WeakReference;

    .local v35, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v35, :cond_1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object/from16 v32, v4

    .local v32, "r":Landroid/content/res/Resources;
    :goto_1
    if-eqz v32, :cond_2

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit p0

    move-object/from16 v16, v32

    :goto_2
    return-object v16

    .end local v3    # "key":Landroid/content/res/ResourcesKey;
    .end local v25    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .end local v32    # "r":Landroid/content/res/Resources;
    .end local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/16 v25, 0x0

    goto :goto_0

    .restart local v3    # "key":Landroid/content/res/ResourcesKey;
    .restart local v25    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v32, 0x0

    goto :goto_1

    .restart local v32    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    .local v10, "assets":Landroid/content/res/AssetManager;
    const/4 v11, 0x0

    .local v11, "classResPath":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "featureApkPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p8, :cond_5

    invoke-static/range {p8 .. p8}, Landroid/app/im/InjectionManager;->getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v17

    :goto_3
    if-eqz v17, :cond_3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "classResPath":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "classResPath":Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_a

    const-string v4, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    :cond_4
    :goto_4
    if-nez v10, :cond_b

    const/16 v16, 0x0

    goto :goto_2

    .end local v10    # "assets":Landroid/content/res/AssetManager;
    .end local v11    # "classResPath":Ljava/lang/String;
    .end local v17    # "featureApkPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v32    # "r":Landroid/content/res/Resources;
    .end local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v10    # "assets":Landroid/content/res/AssetManager;
    .restart local v11    # "classResPath":Ljava/lang/String;
    .restart local v17    # "featureApkPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v32    # "r":Landroid/content/res/Resources;
    .restart local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    :cond_6
    const-string v4, "#"

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .local v28, "paths":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v36, v28, v4

    .local v36, "zip":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v30, v28, v4

    .local v30, "pkgList":Ljava/lang/String;
    const/16 v31, 0x0

    .local v31, "pkgName":[Ljava/lang/String;
    if-eqz v30, :cond_7

    const-string v4, ":"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    :cond_7
    if-eqz v36, :cond_9

    if-eqz v31, :cond_9

    const-string v4, ":"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .local v33, "resPaths":[Ljava/lang/String;
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4}, Landroid/content/res/AssetManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    const/16 v18, 0x0

    .local v18, "featureCnt":I
    :goto_5
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    aget-object v5, v33, v18

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;I)I

    move-result v13

    .local v13, "cookie":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    aget-object v5, v31, v18

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .end local v13    # "cookie":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    goto :goto_4

    .end local v18    # "featureCnt":I
    .end local v33    # "resPaths":[Ljava/lang/String;
    :cond_9
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ERROR: Asset path is null"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_4

    .end local v28    # "paths":[Ljava/lang/String;
    .end local v30    # "pkgList":Ljava/lang/String;
    .end local v31    # "pkgName":[Ljava/lang/String;
    .end local v36    # "zip":Ljava/lang/String;
    :cond_a
    new-instance v10, Landroid/content/res/AssetManager;

    .end local v10    # "assets":Landroid/content/res/AssetManager;
    invoke-direct {v10}, Landroid/content/res/AssetManager;-><init>()V

    .restart local v10    # "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_b
    if-eqz p2, :cond_d

    move-object/from16 v9, p2

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    aget-object v34, v9, v20

    .local v34, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v34    # "splitResDir":Ljava/lang/String;
    :cond_d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v27

    .local v27, "packageManager":Landroid/content/pm/IPackageManager;
    const/16 v29, 0x0

    .local v29, "pi":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object/from16 v0, v27

    move-object/from16 v1, p8

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v29

    :goto_7
    if-eqz v29, :cond_e

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    move-object/from16 p3, v0

    const-string v5, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " new overlays fetched "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_f

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz p3, :cond_10

    invoke-static/range {p9 .. p9}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v9, p3

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v23, v0

    .restart local v23    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    aget-object v21, v9, v20

    .local v21, "idmapPath":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v21    # "idmapPath":Ljava/lang/String;
    .end local v23    # "len$":I
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .end local v15    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .end local v15    # "e":Ljava/lang/Exception;
    :cond_f
    const-string v4, "Null"

    goto :goto_8

    :cond_10
    if-eqz p4, :cond_12

    move-object/from16 v9, p4

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v23, v0

    .restart local v23    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_a
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    aget-object v24, v9, v20

    .local v24, "libDir":Ljava/lang/String;
    const-string v4, ".apk"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asset path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not exist or contains no resources."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v24    # "libDir":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v14

    .local v14, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_16

    const/16 v22, 0x1

    .local v22, "isDefaultDisplay":Z
    :goto_b
    const/16 v26, 0x0

    .local v26, "overrideMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v19

    .local v19, "hasOverrideConfig":Z
    if-eqz v22, :cond_13

    if-eqz v19, :cond_21

    :cond_13
    new-instance v12, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v12, "config":Landroid/content/res/Configuration;
    if-nez v22, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_14
    if-eqz v19, :cond_15

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v4, :cond_20

    iget-object v4, v3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isStackOverrideConfig()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, v4}, Landroid/content/res/Configuration;->updateFromStackOverrideConfig(Landroid/content/res/Configuration;)I

    new-instance v26, Landroid/util/DisplayMetrics;

    .end local v26    # "overrideMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {v26 .. v26}, Landroid/util/DisplayMetrics;-><init>()V

    .restart local v26    # "overrideMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget v4, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_17

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_c
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_18

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_d
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-le v4, v5, :cond_19

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    :goto_e
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-le v4, v5, :cond_1a

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    :goto_f
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    :cond_15
    :goto_10
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v4, :cond_22

    if-eqz v26, :cond_22

    new-instance v32, Landroid/content/res/Resources;

    .end local v32    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    move-object/from16 v2, p7

    invoke-direct {v0, v10, v1, v12, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .restart local v32    # "r":Landroid/content/res/Resources;
    :goto_11
    move-object/from16 v0, p8

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    move/from16 v0, p9

    move-object/from16 v1, v32

    iput v0, v1, Landroid/content/res/Resources;->mResUserId:I

    monitor-enter p0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v35, Ljava/lang/ref/WeakReference;

    .restart local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v35, :cond_23

    invoke-virtual/range {v35 .. v35}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object/from16 v16, v4

    .local v16, "existing":Landroid/content/res/Resources;
    :goto_12
    if-eqz v16, :cond_24

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    invoke-direct/range {p0 .. p0}, Landroid/app/ResourcesManager;->updateThemeResources()V

    monitor-exit p0

    goto/16 :goto_2

    .end local v16    # "existing":Landroid/content/res/Resources;
    .end local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v19    # "hasOverrideConfig":Z
    .end local v22    # "isDefaultDisplay":Z
    .end local v26    # "overrideMetrics":Landroid/util/DisplayMetrics;
    .restart local v35    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_b

    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v19    # "hasOverrideConfig":Z
    .restart local v22    # "isDefaultDisplay":Z
    .restart local v26    # "overrideMetrics":Landroid/util/DisplayMetrics;
    :cond_17
    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_c

    :cond_18
    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_d

    :cond_19
    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    goto :goto_e

    :cond_1a
    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    goto :goto_f

    :cond_1b
    iget v4, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_1c

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_13
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_1d

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_14
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v4, v5, :cond_1e

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    :goto_15
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v4, v5, :cond_1f

    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    :goto_16
    move-object/from16 v0, v26

    iput v4, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    goto/16 :goto_10

    :cond_1c
    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_13

    :cond_1d
    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_14

    :cond_1e
    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    goto :goto_15

    :cond_1f
    iget v4, v14, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    goto :goto_16

    :cond_20
    iget-object v4, v3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto/16 :goto_10

    .end local v12    # "config":Landroid/content/res/Configuration;
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v12

    .restart local v12    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_10

    :cond_22
    new-instance v32, Landroid/content/res/MiuiResources;

    .end local v32    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v32

    move-object/from16 v1, p7

    invoke-direct {v0, v10, v14, v12, v1}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .restart local v32    # "r":Landroid/content/res/Resources;
    goto/16 :goto_11

    :cond_23
    const/16 v16, 0x0

    goto/16 :goto_12

    .restart local v16    # "existing":Landroid/content/res/Resources;
    :cond_24
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v32

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v32

    goto/16 :goto_2
.end method
