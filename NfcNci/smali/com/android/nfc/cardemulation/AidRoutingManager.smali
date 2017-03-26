.class public Lcom/android/nfc/cardemulation/AidRoutingManager;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# static fields
.field static final AID_MATCHING_EXACT_ONLY:I = 0x0

.field static final AID_MATCHING_EXACT_OR_PREFIX:I = 0x1

.field static final AID_MATCHING_PREFIX_ONLY:I = 0x2

.field static final DBG:Z

.field static final PPSE:Ljava/lang/String; = "325041592E5359532E4444463031"

.field static final RM_NONE:I = 0x0

.field static final RM_OFFHOST:I = 0x2

.field static final RM_ONHOST:I = 0x1

.field static final ROUTE_HOST:I = 0x0

.field public static final ROUTE_UICC:I = 0x2

.field static final TAG:Ljava/lang/String; = "AidRoutingManager"


# instance fields
.field mAidMatchingSupport:I

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mAutoRoutingSupport:Z

.field mDefaultOffHostRoute:I

.field mDefaultRoute:I

.field mForceUpdate:Z

.field final mLock:Ljava/lang/Object;

.field mManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field mMaxTableSize:I

.field mNfcEePowerTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalCardmodConfig:I

.field mOverFlow:Z

.field mRouteForAid:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRoutingChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 91
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    .line 101
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mNfcEePowerTable:Ljava/util/HashMap;

    .line 123
    iput-boolean v11, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAutoRoutingSupport:Z

    .line 124
    iput v9, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOriginalCardmodConfig:I

    .line 127
    iput-boolean v9, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOverFlow:Z

    .line 128
    iput-boolean v9, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingChanged:Z

    .line 132
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "chipName":Ljava/lang/String;
    const-string v6, "NXP_PN544C3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    iput v9, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 138
    :goto_0
    sget-boolean v6, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "AidRoutingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDefaultRoute=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const-string v6, "NXP_PN544C3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 140
    iput v10, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 143
    :goto_1
    sget-boolean v6, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "AidRoutingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDefaultOffHostRoute=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    const-string v6, "NXP_PN544C3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 145
    iput v10, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    .line 148
    :goto_2
    sget-boolean v6, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "AidRoutingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAidMatchingSupport=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    const-string v6, "NXP_PN547C2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "NXP_PN548C2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "NXP_PN551"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 152
    :cond_3
    iput v9, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 153
    iput v10, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 156
    const/16 v6, 0xa0

    iput v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    .line 160
    :cond_4
    invoke-static {}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getInstance()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v5

    .line 161
    .local v5, "nfcEeObjUtil":Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObjectAll()Ljava/util/ArrayList;

    move-result-object v3

    .line 163
    .local v3, "nfcEeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/NfcEeObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 164
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/NfcEeObject;

    .line 165
    .local v4, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    sget-boolean v6, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "AidRoutingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ee id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " power  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/NfcEeObject;->getSupportedExtendedPowerState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mNfcEePowerTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/NfcEeObject;->getSupportedExtendedPowerState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 137
    .end local v1    # "i":I
    .end local v3    # "nfcEeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/NfcEeObject;>;"
    .end local v4    # "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    .end local v5    # "nfcEeObjUtil":Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    :cond_6
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultRouteDestination()I

    move-result v6

    iput v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    goto/16 :goto_0

    .line 142
    :cond_7
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultOffHostRouteDestination()I

    move-result v6

    iput v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    goto/16 :goto_1

    .line 147
    :cond_8
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingMode()I

    move-result v6

    iput v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    goto/16 :goto_2

    .line 173
    .restart local v1    # "i":I
    .restart local v3    # "nfcEeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/NfcEeObject;>;"
    .restart local v5    # "nfcEeObjUtil":Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    :cond_9
    iput-boolean v11, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAutoRoutingSupport:Z

    .line 175
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->getDefaultProtocolRoute()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "isoDepRouteFromCsc":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 177
    invoke-virtual {v5, v2}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v4

    .line 178
    .restart local v4    # "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    if-eqz v4, :cond_a

    .line 179
    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v6

    iput v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOriginalCardmodConfig:I

    .line 183
    .end local v4    # "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    :cond_a
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 189
    return-void
.end method

.method private native doGetAidMatchingMode()I
.end method

.method private native doGetDefaultOffHostRouteDestination()I
.end method

.method private native doGetDefaultRoute()I
.end method

.method private native doGetDefaultRouteDestination()I
.end method

.method private native doGetPaymentAidBlockingMode()I
.end method


# virtual methods
.method public adjustDefaultRoutes(II)V
    .locals 2
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iput p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 651
    iput p2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 653
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/NfcService;->adjustDefaultRoutes(II)V

    .line 654
    monitor-exit v1

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAidTable()V
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->clearTable(I)V

    .line 572
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 573
    return-void
.end method

.method clearNfcRoutingTableLocked()V
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->clearTable(I)V

    .line 221
    return-void
.end method

.method public configureRouting(Ljava/util/LinkedHashMap;)Z
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "aidMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v32

    move/from16 v0, v32

    invoke-direct {v6, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 229
    .local v6, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v27, Ljava/util/LinkedHashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v32

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 233
    .local v27, "routeForAid":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v9, "aidSizeForRoute":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v8, "aidSizeExpectRoute":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mNfcEePowerTable:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 238
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v32

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v32

    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v32, 0x0

    const-string v33, "325041592E5359532E4444463031"

    aput-object v33, v25, v32

    .line 247
    .local v25, "priorityAids":[Ljava/lang/String;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingChanged:Z

    .line 248
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOverFlow:Z

    .line 250
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 251
    aget-object v4, v25, v21

    .line 252
    .local v4, "aid":Ljava/lang/String;
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_1

    const-string v32, "AidRoutingManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "priority aid: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 254
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 255
    .local v26, "route":I
    new-instance v32, Ljava/util/LinkedHashSet;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 256
    .local v18, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    move/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 263
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 264
    .local v28, "size":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int/lit8 v32, v32, 0x4

    add-int v28, v28, v32

    .line 265
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v18    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "route":I
    .end local v28    # "size":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 273
    .end local v4    # "aid":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 274
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 275
    .restart local v26    # "route":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    .restart local v4    # "aid":Ljava/lang/String;
    new-instance v32, Ljava/util/LinkedHashSet;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 279
    .restart local v18    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    move/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 285
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 286
    .restart local v28    # "size":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int/lit8 v32, v32, 0x4

    add-int v28, v28, v32

    .line 287
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 295
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "route":I
    .end local v28    # "size":I
    :cond_5
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    .line 296
    .local v29, "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 297
    .local v13, "defRoute":I
    const/4 v7, 0x0

    .line 298
    .local v7, "aidSize":I
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_6

    const-string v32, "AidRoutingManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "AidSize  - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")--"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_6
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 300
    .local v16, "dest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 301
    .local v11, "curRoute":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 302
    .restart local v28    # "size":I
    if-eq v13, v11, :cond_7

    .line 303
    add-int v7, v7, v28

    goto :goto_4

    .line 307
    .end local v11    # "curRoute":I
    .end local v16    # "dest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v28    # "size":I
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 310
    .end local v7    # "aidSize":I
    .end local v13    # "defRoute":I
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v29    # "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 311
    .restart local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 312
    .restart local v26    # "route":I
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 313
    .restart local v28    # "size":I
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_a

    const-string v32, "AidRoutingManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Default Route  - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " / expected aid table size "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 316
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v26    # "route":I
    .end local v28    # "size":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAutoRoutingSupport:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 322
    const-string v32, "KOREA"

    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOriginalCardmodConfig:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOriginalCardmodConfig:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_c

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOriginalCardmodConfig:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 327
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mForceUpdate:Z

    .line 328
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingChanged:Z

    .line 333
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 334
    .local v12, "currentSize":I
    const/16 v17, 0x0

    .line 336
    .local v17, "doApply":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v12, v0, :cond_10

    .line 337
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_d

    const-string v32, "AidRoutingManager"

    const-string v33, "Current Table is Full"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_d
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_e
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 340
    .restart local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 341
    .restart local v26    # "route":I
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 342
    .restart local v28    # "size":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    move/from16 v32, v0

    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 343
    const-string v32, "AidRoutingManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "If Default route is changed by "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", routing table is not fulled"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 345
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mForceUpdate:Z

    .line 346
    const/16 v17, 0x1

    .line 347
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingChanged:Z

    goto :goto_6

    .line 350
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v26    # "route":I
    .end local v28    # "size":I
    :cond_f
    if-nez v17, :cond_10

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOriginalCardmodConfig:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 352
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mForceUpdate:Z

    .line 362
    .end local v12    # "currentSize":I
    .end local v17    # "doApply":Z
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_13

    const/16 v32, 0x0

    :goto_8
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOverFlow:Z

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 365
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mForceUpdate:Z

    move/from16 v32, v0

    if-nez v32, :cond_14

    .line 366
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_11

    const-string v32, "AidRoutingManager"

    const-string v34, "Routing table(all) unchanged, not updating"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_11
    const/16 v32, 0x0

    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    .end local v22    # "i$":Ljava/util/Iterator;
    :goto_9
    return v32

    .line 358
    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_12
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_10

    const-string v32, "AidRoutingManager"

    const-string v33, "autoSwitching is not enabled;"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 362
    :cond_13
    const/16 v32, 0x1

    goto :goto_8

    .line 371
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAutoRoutingSupport:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v32, v0

    const-string v34, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultRoute(Ljava/lang/String;I)Z

    .line 374
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/nfc/NfcFeatureUtil;->supportTechnologyChange()Z

    move-result v32

    if-eqz v32, :cond_16

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v30, v0

    .line 376
    .local v30, "tech":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v32, v0

    if-nez v32, :cond_15

    .line 377
    const/16 v30, 0x2

    .line 379
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v32, v0

    const-string v34, "ROUTE_TO_LISTEN_TECH"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultRoute(Ljava/lang/String;I)Z

    .line 382
    .end local v30    # "tech":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/nfc/cardemulation/CardEmulationManager;->updates()V

    .line 389
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 390
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    .line 391
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v32, v0

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1c

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v34, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    .line 415
    .local v15, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_1c

    .line 416
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 419
    .local v14, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_19
    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 420
    .restart local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 421
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 432
    .restart local v26    # "route":I
    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v32, v0

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_19

    .line 433
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_1a

    .line 434
    const-string v32, "AidRoutingManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Adding AID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " for default "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "route, because a conflicting shorter AID will be "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "added to the routing table"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mNfcEePowerTable:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 438
    .local v31, "value":Ljava/lang/Integer;
    if-eqz v31, :cond_1b

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 440
    .local v24, "power":I
    :goto_b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v34, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v24

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_a

    .line 479
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "defaultRouteAid":Ljava/lang/String;
    .end local v15    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "power":I
    .end local v26    # "route":I
    .end local v31    # "value":Ljava/lang/Integer;
    :catchall_1
    move-exception v32

    monitor-exit v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v32

    .line 438
    .restart local v4    # "aid":Ljava/lang/String;
    .restart local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "defaultRouteAid":Ljava/lang/String;
    .restart local v15    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v26    # "route":I
    .restart local v31    # "value":Ljava/lang/Integer;
    :cond_1b
    const/16 v24, 0x0

    goto :goto_b

    .line 448
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "defaultRouteAid":Ljava/lang/String;
    .end local v15    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v26    # "route":I
    .end local v31    # "value":Ljava/lang/Integer;
    :cond_1c
    const/16 v21, 0x0

    :goto_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_26

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    .line 450
    .restart local v26    # "route":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mNfcEePowerTable:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 451
    .restart local v31    # "value":Ljava/lang/Integer;
    if-eqz v31, :cond_1e

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 454
    .restart local v24    # "power":I
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v32, v0

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_25

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 456
    .local v10, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_25

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 457
    .restart local v4    # "aid":Ljava/lang/String;
    const-string v32, "*"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_23

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v32, v0

    if-nez v32, :cond_1f

    .line 459
    const-string v32, "AidRoutingManager"

    const-string v34, "This device does not support prefix AIDs."

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 451
    .end local v4    # "aid":Ljava/lang/String;
    .end local v10    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v24    # "power":I
    :cond_1e
    const/16 v24, 0x0

    goto :goto_d

    .line 460
    .restart local v4    # "aid":Ljava/lang/String;
    .restart local v10    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v24    # "power":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v32, v0

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_21

    .line 461
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_20

    const-string v32, "AidRoutingManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Routing prefix AID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " to route "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_20
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v32

    const/16 v34, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_e

    .line 466
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v32, v0

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1d

    .line 467
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_22

    const-string v32, "AidRoutingManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Routing prefix AID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " to route "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_22
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_e

    .line 472
    :cond_23
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_24

    const-string v32, "AidRoutingManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Routing exact AID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " to route "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_24
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_e

    .line 448
    .end local v4    # "aid":Ljava/lang/String;
    .end local v10    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_25
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c

    .line 479
    .end local v24    # "power":I
    .end local v26    # "route":I
    .end local v31    # "value":Ljava/lang/Integer;
    :cond_26
    monitor-exit v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 482
    const-string v32, "BCM2079x"

    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 484
    invoke-virtual/range {v27 .. v27}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_27
    :goto_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 485
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v33, "325041592E5359532E4444463031"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_27

    .line 486
    sget-boolean v32, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v32, :cond_28

    const-string v32, "AidRoutingManager"

    const-string v33, "configureRouting; PPSE AID is added"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_28
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v33

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-nez v32, :cond_29

    const/16 v32, 0x1

    :goto_10
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->onPpseRouted(I)Z

    goto :goto_f

    :cond_29
    const/16 v32, 0x2

    goto :goto_10

    .line 495
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 496
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mForceUpdate:Z

    .line 498
    const/16 v32, 0x1

    goto/16 :goto_9
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 515
    const-string v4, "Routing table:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Default route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-nez v4, :cond_0

    const-string v4, "host"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 518
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 519
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 520
    .local v1, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Routed to 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 525
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 516
    .end local v2    # "i":I
    :cond_0
    const-string v4, "secure element"

    goto :goto_0

    .line 518
    .restart local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    return-void
.end method

.method public enableAutoRouting(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAutoRoutingSupport:Z

    return-void
.end method

.method public getDefaultRoute()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    return v0
.end method

.method public getMaxAidTableSize()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    return v0
.end method

.method public getPaymentAidBlockingMode()I
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 661
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetPaymentAidBlockingMode()I

    move-result v0

    .line 662
    monitor-exit v2

    .line 663
    return v0

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRouteForAidLocked(Ljava/lang/String;)I
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 549
    .local v0, "route":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public isBufferFull()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOverFlow:Z

    return v0
.end method

.method public isRoutingChanged()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingChanged:Z

    return v0
.end method

.method public onNfccRoutingTableCleared()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 510
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 511
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRouteAllAids()V
    .locals 15

    .prologue
    .line 588
    iget-object v10, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 592
    :try_start_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 600
    :try_start_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    const-string v11, "00"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Lcom/android/nfc/NfcService;->reRouteAid(Ljava/lang/String;IZZ)V

    .line 602
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 603
    .local v8, "routeForAid":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v9, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 604
    .local v2, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 605
    .local v7, "route":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    .local v0, "aid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 608
    .local v3, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 609
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 616
    .restart local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "route":I
    .end local v8    # "routeForAid":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9

    .line 644
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 594
    :catch_0
    move-exception v4

    .line 595
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v9, "AidRoutingManager"

    const-string v11, "reRouteAllAids: thread interrupted"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 597
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 645
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 612
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "route":I
    .restart local v8    # "routeForAid":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .restart local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 619
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "route":I
    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 620
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 621
    .restart local v7    # "route":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 623
    .restart local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 624
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    .restart local v0    # "aid":Ljava/lang/String;
    sget-boolean v9, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "AidRoutingManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reRouteAllAids; sec elem id=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " aid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_3
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v7, v11, v12}, Lcom/android/nfc/NfcService;->reRouteAid(Ljava/lang/String;IZZ)V

    .line 623
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 639
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v7    # "route":I
    :cond_4
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    const-string v11, "00"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v9, v11, v12, v13, v14}, Lcom/android/nfc/NfcService;->reRouteAid(Ljava/lang/String;IZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 642
    :try_start_5
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 644
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2
.end method

.method public removeAidFromLookUpTable(Ljava/lang/String;)V
    .locals 6
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 530
    sget-boolean v2, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "AidRoutingManager"

    const-string v3, "removeAidFromLookUp Table success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 532
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getRouteForAidLocked(Ljava/lang/String;)I

    move-result v1

    .line 534
    .local v1, "currentRoute":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 535
    sget-boolean v2, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAid(): No existing route for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_1
    monitor-exit v3

    .line 545
    :goto_0
    return-void

    .line 539
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 540
    .local v0, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    monitor-exit v3

    goto :goto_0

    .line 544
    .end local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "currentRoute":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 542
    .restart local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "currentRoute":I
    :cond_3
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 543
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAidTableSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxTableSize:I

    return-void
.end method

.method public setDefaultRoute(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 556
    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentDefaultRoute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRoute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mForceUpdate:Z

    .line 560
    iput p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 561
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsAidPrefixRouting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 193
    iget v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
