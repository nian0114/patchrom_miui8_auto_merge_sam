.class public Lcom/android/nfc/cardemulation/DynamicServiceManager;
.super Ljava/lang/Object;
.source "DynamicServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;,
        Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;,
        Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_SERVICE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DynamicServiceManager"

.field private static final mUserId:I


# instance fields
.field private mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

.field private final mContext:Landroid/content/Context;

.field private final mDynamicServiceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field private mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    sput v0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    .line 64
    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mLock:Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 78
    new-instance v1, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    .line 79
    new-instance v1, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    .line 80
    iget-object v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->read()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    .line 82
    iget-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v3, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 84
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v3, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    :cond_0
    monitor-exit v2

    .line 89
    return-void

    .line 88
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    return v0
.end method

.method private convert(Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 23
    .param p1, "service"    # Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .prologue
    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v18

    .line 459
    .local v18, "groups":[Lcom/gsma/services/nfc/AidGroup;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v4, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_3

    .line 461
    move-object/from16 v15, v18

    .local v15, "arr$":[Lcom/gsma/services/nfc/AidGroup;
    array-length v0, v15

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    move/from16 v20, v19

    .end local v15    # "arr$":[Lcom/gsma/services/nfc/AidGroup;
    .end local v19    # "i$":I
    .end local v21    # "len$":I
    .local v20, "i$":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v17, v15, v20

    .line 462
    .local v17, "group":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual/range {v17 .. v17}, Lcom/gsma/services/nfc/AidGroup;->getAids()[Ljava/lang/String;

    move-result-object v13

    .line 463
    .local v13, "aidList":[Ljava/lang/String;
    if-eqz v13, :cond_0

    array-length v3, v13

    if-nez v3, :cond_1

    .line 461
    .end local v20    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v19, v20, 0x1

    .restart local v19    # "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .restart local v20    # "i$":I
    goto :goto_0

    .line 465
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v14, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v16, v13

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .end local v20    # "i$":I
    .restart local v19    # "i$":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v11, v16, v19

    .line 467
    .local v11, "a":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 468
    .end local v11    # "a":Ljava/lang/String;
    :cond_2
    new-instance v12, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual/range {v17 .. v17}, Lcom/gsma/services/nfc/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/gsma/services/nfc/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v14, v3, v5}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v12, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 473
    .end local v12    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "aidList":[Ljava/lang/String;
    .end local v14    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v17    # "group":Lcom/gsma/services/nfc/AidGroup;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, "seName":Ljava/lang/String;
    const-string v3, "SIM1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 475
    const-string v7, "SIM"

    .line 478
    :cond_4
    :goto_3
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUid()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getVirtualClassName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 482
    .local v2, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    return-object v2

    .line 476
    .end local v2    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5
    const-string v3, "eSE1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    const-string v7, "eSE"

    goto :goto_3
.end method

.method private convert(Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .locals 13
    .param p1, "info"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->getSeId()I

    move-result v9

    .line 421
    .local v9, "seId":I
    const-string v10, "DH"

    .line 422
    .local v10, "seName":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 423
    const-string v10, "eSE1"

    .line 427
    :cond_0
    :goto_0
    new-instance v8, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-direct {v8, v11, v10, v12}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 429
    .local v8, "offHostService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    iget-object v11, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 430
    .local v2, "banner":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v8, v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v5

    .line 434
    .local v5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 450
    :cond_2
    return-object v8

    .line 424
    .end local v2    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v8    # "offHostService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 425
    const-string v10, "SIM1"

    goto :goto_0

    .line 437
    .restart local v2    # "banner":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v8    # "offHostService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    .line 438
    .local v3, "g":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;

    move-result-object v4

    .line 444
    .local v4, "group":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v1

    .line 445
    .local v1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 447
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/gsma/services/nfc/AidGroup;->addNewAid(Ljava/lang/String;)V

    goto :goto_2

    .line 438
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "group":Lcom/gsma/services/nfc/AidGroup;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v11, "description"

    goto :goto_1
.end method

.method private convert(Lcom/gsma/services/nfc/OffHostService;)Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .locals 11
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v10

    .line 488
    .local v10, "list":[Lcom/gsma/services/nfc/AidGroup;
    if-eqz v10, :cond_0

    array-length v1, v10

    if-lez v1, :cond_0

    .line 489
    move-object v6, v10

    .local v6, "arr$":[Lcom/gsma/services/nfc/AidGroup;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 490
    .local v7, "group":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 491
    .end local v6    # "arr$":[Lcom/gsma/services/nfc/AidGroup;
    .end local v7    # "group":Lcom/gsma/services/nfc/AidGroup;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_0
    new-instance v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V

    .line 494
    .local v0, "localOffHostService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    return-object v0
.end method

.method private getDefaultServiceComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "componentString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDynamicServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v4, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 382
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 384
    .local v2, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_1
    return-object v3
.end method

.method private getDynamicServicesComponent(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v4, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 399
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 401
    .local v3, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    .end local v3    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_1
    return-object v0
.end method

.method private getStaticServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v6, "sServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    sget v10, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 342
    .local v7, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 343
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getDynamicServicesComponent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    .local v0, "dServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 348
    .restart local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    .line 349
    .local v4, "isDynamic":Z
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v9

    if-nez v9, :cond_2

    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 352
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 357
    .local v1, "dservice":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 358
    const/4 v4, 0x1

    .line 362
    .end local v1    # "dservice":Landroid/content/ComponentName;
    :cond_5
    if-nez v4, :cond_2

    .line 363
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isDynamic":Z
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v8, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 368
    .restart local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-direct {p0, v7}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->convert(Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 371
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_7
    return-object v8
.end method

.method private getUid(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 498
    if-nez p1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v5

    .line 500
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 501
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 502
    const/16 v6, 0x80

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 504
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 505
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 506
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 507
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDefaultDynamicService()V
    .locals 5

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getDefaultServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 324
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v4, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 325
    .local v2, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->updateDefaultDynamicService(Landroid/content/ComponentName;)V

    .line 331
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->updateDefaultDynamicService(Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method public addOrUpdateOffHostService(Lcom/gsma/services/nfc/OffHostService;)Z
    .locals 9
    .param p1, "newService"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    const/4 v5, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v5

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v7, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 163
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->convert(Lcom/gsma/services/nfc/OffHostService;)Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    move-result-object v4

    .line 165
    .local v4, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 167
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getKey()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 168
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setVirtualClassName(Ljava/lang/String;)V

    .line 169
    :cond_2
    sget v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setUserId(I)V

    .line 170
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setUid(I)V

    .line 173
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getVirtualClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    const/4 v1, 0x0

    .line 177
    .local v1, "dservice":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dservice":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    check-cast v1, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 179
    .restart local v1    # "dservice":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->delete(Ljava/lang/String;)V

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 185
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->save(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setBannerName(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->clearBanner()V

    .line 187
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->updateDefaultDynamicService()V

    .line 192
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    sget v6, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-direct {p0, v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->convert(Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->addOrUpdateDynamicService(ILandroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 194
    sget-boolean v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "DynamicServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method deleteDynamicServices(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v4, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 246
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 249
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    const/4 v2, 0x0

    .line 250
    .local v2, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    check-cast v2, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 252
    .restart local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->delete(Ljava/lang/String;)V

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 258
    :cond_3
    sget-boolean v3, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "DynamicServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->write(Landroid/util/SparseArray;)Z

    .line 261
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)Z
    .locals 9
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    const/4 v5, 0x0

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v6

    if-nez v6, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v5

    .line 207
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getVirtualClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v7, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 211
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "found":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 215
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    const/4 v1, 0x0

    .line 216
    .local v1, "dservice":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dservice":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    check-cast v1, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 218
    .restart local v1    # "dservice":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    iget-object v6, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->delete(Ljava/lang/String;)V

    .line 220
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 221
    const/4 v2, 0x1

    .line 225
    :cond_3
    if-nez v2, :cond_4

    .line 226
    sget-boolean v6, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "DynamicServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to delete the service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->updateDefaultDynamicService()V

    .line 232
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    sget v6, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v5, v6, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->deleteDynamicService(ILandroid/content/ComponentName;)V

    .line 234
    sget-boolean v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "DynamicServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleted service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 515
    const-string v2, "DynamicServiceManager cache:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v3, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 517
    .local v1, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 518
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v1    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    # invokes: Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->clearDrawableFromMemCache()V
    invoke-static {v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->access$000(Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;)V

    .line 72
    return-void
.end method

.method public getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v2

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getDynamicServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 103
    .local v4, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->clone()Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    move-result-object v2

    .line 105
    .local v2, "defaultService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->load(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_3
    sget-boolean v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "DynamicServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dynamic default service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v2    # "defaultService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v4    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_4
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getDefaultServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 113
    .local v1, "component":Landroid/content/ComponentName;
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getStaticServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 114
    .restart local v4    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 115
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->clone()Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    move-result-object v2

    .line 116
    .restart local v2    # "defaultService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    sget-boolean v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "DynamicServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "static default service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    .end local v2    # "defaultService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v4    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_6
    sget-boolean v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "DynamicServiceManager"

    const-string v6, "default service is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getOffHostServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/OffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v5

    .line 132
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v5, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/OffHostService;>;"
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getStaticServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 135
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 136
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getDynamicServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 143
    .local v4, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->clone()Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    move-result-object v3

    .line 144
    .local v3, "myService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mBanner:Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/cardemulation/DynamicServiceManager$Banner;->load(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v3, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "myService":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v4    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_4
    sget-boolean v6, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "DynamicServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " get "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " service(s)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadAllDynamicServices()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v6, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 271
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 273
    .local v3, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-direct {p0, v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->convert(Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 274
    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v1    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_1
    sget-boolean v5, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "DynamicServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " service(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    return-object v4
.end method

.method updateDefaultDynamicService(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    sget v4, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 290
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    sget-boolean v3, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "DynamicServiceManager"

    const-string v4, "ignore updating default service because list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->write(Landroid/util/SparseArray;)Z

    .line 295
    monitor-exit v4

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 295
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 299
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 300
    .local v2, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setDefaultService(Z)V

    .line 305
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 306
    .restart local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 307
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setDefaultService(Z)V

    .line 311
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 312
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mXmlParser:Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager;->mDynamicServiceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->write(Landroid/util/SparseArray;)Z

    .line 313
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 315
    sget-boolean v3, Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const-string v3, "DynamicServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated default service to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method
