.class public Lcom/sec/epdg/mapcon/MapconTable;
.super Ljava/lang/Object;
.source "MapconTable.java"


# static fields
.field private static mInstance:Lcom/sec/epdg/mapcon/MapconTable;


# instance fields
.field private mMapconMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            "[",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    .line 180
    return-void
.end method

.method private declared-synchronized addToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 11
    .param p1, "apnTypeStr"    # Ljava/lang/String;
    .param p2, "ratTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            "[",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    new-instance v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;

    invoke-direct {v8, p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;->getMapconApnTypeList()Ljava/util/EnumSet;

    move-result-object v1

    .line 53
    .local v1, "apnTypeList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    new-instance v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;

    invoke-direct {v8, p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->getMapconPrefListArray()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v6

    .line 55
    .local v6, "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 56
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v8, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v8, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-object v2, v6

    .local v2, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v2, v4

    .line 59
    .local v7, "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    const-string v8, "[MAPCON]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apnType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .end local v2    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_1
    iget-object v8, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v8

    .line 51
    .end local v1    # "apnTypeList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v6    # "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/MapconTable;
    .locals 2

    .prologue
    .line 174
    const-class v1, Lcom/sec/epdg/mapcon/MapconTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/sec/epdg/mapcon/MapconTable;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/MapconTable;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    .line 177
    :cond_0
    sget-object v0, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 2
    .param p1, "apnTypeKey"    # Ljava/lang/String;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v0

    .line 68
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v1, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 67
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateOperatorNumeric(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "default"

    .line 219
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 220
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_5

    .line 221
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_3

    .line 229
    const-string v4, "[MAPCON]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "suppressed in user binary"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    if-eqz v1, :cond_0

    const-string v3, "20404"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getGroupIdLevel1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "gid1":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "BAE0000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const-string v1, "311480"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "gid1":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 224
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 229
    goto :goto_1

    .line 232
    :cond_3
    const-string v4, "[MAPCON]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "suppressed in user binary"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 218
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    move-object v3, v1

    .line 232
    goto :goto_3

    .line 236
    :cond_5
    :try_start_2
    const-string v3, "[MAPCON]"

    const-string v4, "Telephony manager instance is null"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized IsLteOnlyAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 150
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_0

    .line 151
    const/4 v2, 0x0

    .line 154
    :goto_0
    monitor-exit p0

    return v2

    .line 153
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 154
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLteOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 147
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized IsWifiOnlyAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 140
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_0

    .line 141
    const/4 v2, 0x0

    .line 144
    :goto_0
    monitor-exit p0

    return v2

    .line 143
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 144
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 137
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createMapconTable(Landroid/content/Context;)Z
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateOperatorNumeric(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    .line 72
    const-string v1, "[MAPCON]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createMapconTable Operator Numeric:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "apntype"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "ratpreforder"

    aput-object v4, v2, v1

    .line 78
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v7, "operatornumeric=\'default\'"

    .line 81
    .local v7, "defaultSelection":Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 85
    .local v11, "messagesCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 86
    :cond_0
    const-string v1, "[MAPCON]"

    const-string/jumbo v4, "createMapconTable. Loading default MAPCON"

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v5, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 89
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 90
    :cond_1
    const-string v1, "[MAPCON]"

    const-string v4, "Empty MAPCON DB"

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    const/4 v1, 0x0

    .line 103
    if-eqz v11, :cond_2

    .line 104
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    const/4 v11, 0x0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 94
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    const-string v1, "apntype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "apnTypeStr":Ljava/lang/String;
    const-string/jumbo v1, "ratpreforder"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, "ratTypeStr":Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/mapcon/MapconTable;->mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-direct {v1, v10, v12}, Lcom/sec/epdg/mapcon/MapconTable;->addToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 103
    .end local v10    # "apnTypeStr":Ljava/lang/String;
    .end local v12    # "ratTypeStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 104
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 105
    const/4 v11, 0x0

    :cond_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "defaultSelection":Ljava/lang/String;
    .end local v11    # "messagesCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 101
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v7    # "defaultSelection":Ljava/lang/String;
    .restart local v11    # "messagesCursor":Landroid/database/Cursor;
    :cond_5
    const/4 v1, 0x1

    .line 103
    if-eqz v11, :cond_2

    .line 104
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isVoWifiPref(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .line 171
    .local v0, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 170
    .end local v0    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p3, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p4, "result"    # Z
    .param p5, "broadcast"    # Z

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/AppPolicy;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V
    .locals 1
    .param p1, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/AppPolicy;->resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p3, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/mapcon/AppPolicy;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldMoveToLte(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .line 126
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_1

    .line 127
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v0, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 133
    :goto_0
    monitor-exit p0

    return v2

    .line 130
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 133
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLtePreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 123
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized shouldMoveToWifi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .line 113
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_1

    .line 114
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 120
    :goto_0
    monitor-exit p0

    return v2

    .line 117
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 120
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 110
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "MAPCON Policy\n"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 36
    .local v7, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 37
    .local v3, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 39
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v8, p0, Lcom/sec/epdg/mapcon/MapconTable;->mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 40
    .local v6, "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    move-object v1, v6

    .local v1, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 42
    .local v5, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    .end local v5    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 45
    goto :goto_0

    .line 46
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .end local v1    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 47
    monitor-exit p0

    return-object v7

    .line 35
    .end local v3    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v7    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 184
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v1, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateOperatorNumeric(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatornumeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apntype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "selection":Ljava/lang/String;
    const-string/jumbo v2, "ratpreforder"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 198
    array-length v2, p2

    .line 199
    .local v2, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    if-lez v2, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "ratpreforder"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateOperatorNumeric(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatornumeric=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/mapcon/MapconTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "apntype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "selection":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    :cond_2
    return-void
.end method
