.class public Landroid/net/wifi/WifiApDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiApDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;,
        Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;,
        Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataBaseContext;
    }
.end annotation


# static fields
.field private static final ACCEPT:Ljava/lang/String; = "accept"

.field private static final DES:Ljava/lang/String; = " -d "

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INPUT:Ljava/lang/String; = " -i "

.field private static final IP:Ljava/lang/String; = "ip"

.field private static final IPTABLES_A:Ljava/lang/String; = "iptables -A FORWARD "

.field private static final IPTABLES_D:Ljava/lang/String; = "iptables -D FORWARD "

.field private static final IPTABLES_GREP:Ljava/lang/String; = "iptables -nvx -L FORWARD | grep "

.field private static final IPTABLES_REJECT:Ljava/lang/String; = " -j REJECT"

.field private static final LIMIT_DATA:Ljava/lang/String; = "limit_data"

.field private static final MAC:Ljava/lang/String; = "mac"

.field private static final NAME:Ljava/lang/String; = "wifiapdata.db"

.field private static final OUTPUT:Ljava/lang/String; = " -o "

.field private static final PATH:Ljava/lang/String; = "/data/misc/wifi_hostapd"

.field private static final REJECT:Ljava/lang/String; = "reject"

.field private static final REMAIN:Ljava/lang/String; = "remain"

.field private static final SRC:Ljava/lang/String; = " -s "

.field private static final TABLE_NAME:Ljava/lang/String; = "wifiapdata"

.field private static final TAG:Ljava/lang/String; = "WifiApDatabaseHelper"

.field private static final TEMP_USAGE:Ljava/lang/String; = "temp_usage"

.field private static final USAGE:Ljava/lang/String; = "usage"

.field private static final VERSION:I = 0x1

.field private static final WIFIAPDATA_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE wifiapdata (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, mac STRING NOT NULL , ip STRING NOT NULL , usage STRING NOT NULL , limit_data STRING NOT NULL , temp_usage STRING NOT NULL , remain STRING NOT NULL , accept STRING , reject STRING)"

.field private static final WIFI_AP_DATA_MONITOR_MS:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

.field private mWifiApList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mobileInterface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataBaseContext;

    const-string v1, "/data/misc/wifi_hostapd"

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataBaseContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "wifiapdata.db"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    .line 101
    iput-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/net/wifi/WifiApDatabaseHelper$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApDatabaseHelper$1;-><init>(Landroid/net/wifi/WifiApDatabaseHelper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    iput-object p1, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;-><init>(Landroid/net/wifi/WifiApDatabaseHelper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    .line 175
    invoke-direct {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->registerForBroadcasts()V

    .line 176
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->setDatabaseDefaultValue()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApDatabaseHelper;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiApDatabaseHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiApDatabaseHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiApDatabaseHelper;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApDatabaseHelper;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiApDatabaseHelper;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    return-object v0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    return-void
.end method


# virtual methods
.method public addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "v1"    # Ljava/lang/String;
    .param p2, "v2"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    .line 402
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "b1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, "b2":Ljava/math/BigDecimal;
    if-eqz p3, :cond_0

    .line 405
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public addList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v4, "WifiApDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addList List size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mac : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v2

    .line 234
    .local v2, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "ip"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 239
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v4, "wifiapdata"

    const-string/jumbo v5, "mac=?"

    invoke-virtual {v1, v4, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 243
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->monitorStaData(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    invoke-virtual {v4}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->resume()V

    .line 246
    :cond_1
    return-void
.end method

.method public checkWifiApList()V
    .locals 3

    .prologue
    .line 412
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 413
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 414
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 416
    .local v1, "mac":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->monitorStaData(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v1    # "mac":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->resume()V

    .line 420
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public clearIptablesCmd(Ljava/lang/String;)V
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 440
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v1

    .line 441
    .local v1, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "ip":Ljava/lang/String;
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "monitorStaData mac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", accept : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getAccept()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reject : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getAccept()Z

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    invoke-virtual {p0, v0, v5}, Landroid/net/wifi/WifiApDatabaseHelper;->setDataMonitor(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 445
    invoke-virtual {p0, p1, v5, v5}, Landroid/net/wifi/WifiApDatabaseHelper;->updateMonitorAndReject(Ljava/lang/String;ZZ)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getAccept()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 448
    invoke-virtual {p0, v0, v5}, Landroid/net/wifi/WifiApDatabaseHelper;->rejectStaData(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 449
    invoke-virtual {p0, p1, v5, v5}, Landroid/net/wifi/WifiApDatabaseHelper;->updateMonitorAndReject(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public clearWifiApList(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 455
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearWifiApList List size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 457
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 458
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    .local v1, "mMac":Ljava/lang/String;
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->clearIptablesCmd(Ljava/lang/String;)V

    .line 462
    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->setUsageToZero(Ljava/lang/String;)V

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 468
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "mMac":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->pause()V

    .line 469
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 291
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 292
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v2, "wifiapdata"

    const-string/jumbo v3, "mac=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method public deleteWifiApData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->removeStaFromApList(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->delete(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public execIptables(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "input_cmd"    # Ljava/lang/String;
    .param p2, "output_cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 498
    :try_start_0
    const-string v3, "WifiApDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input_cmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 500
    .local v1, "p":Ljava/lang/Process;
    const-string v3, "WifiApDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "output_cmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 503
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 504
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    const/4 v2, 0x1

    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 505
    .restart local v1    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 509
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "p":Ljava/lang/Process;
    :catch_1
    move-exception v0

    .line 510
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    .locals 16
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v15, 0x0

    .line 386
    .local v15, "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    const/4 v14, 0x0

    .line 387
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 388
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 390
    .local v4, "args":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "wifiapdata"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "id"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "mac"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "ip"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v6, "usage"

    aput-object v6, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v6, "limit_data"

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v6, "temp_usage"

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v6, "remain"

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v6, "accept"

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v6, "reject"

    aput-object v6, v2, v3

    const-string/jumbo v3, "mac=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 391
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    new-instance v5, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x6

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x7

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0x8

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v15    # "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    .local v5, "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    :goto_0
    if-eqz v14, :cond_0

    .line 396
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_0
    return-object v5

    .line 395
    .end local v5    # "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    .restart local v15    # "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    :catchall_0
    move-exception v1

    if-eqz v14, :cond_1

    .line 396
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    :cond_2
    move-object v5, v15

    .end local v15    # "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    .restart local v5    # "result":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    goto :goto_0
.end method

.method public getMobileIfaceName(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 5
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "iface":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 199
    .end local v0    # "iface":Ljava/lang/String;
    .local v1, "iface":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 193
    .end local v1    # "iface":Ljava/lang/String;
    .restart local v0    # "iface":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v3, v4}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 194
    .local v2, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 199
    .end local v0    # "iface":Ljava/lang/String;
    .restart local v1    # "iface":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "iface":Ljava/lang/String;
    .restart local v0    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getStaUsageData(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v8

    .line 566
    .local v8, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v6

    .line 567
    .local v6, "ip":Ljava/lang/String;
    const/4 v4, 0x0

    .line 568
    .local v4, "input":Ljava/io/DataInputStream;
    const-wide/16 v2, 0x0

    .line 569
    .local v2, "data":J
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "iptables -nvx -L FORWARD | grep "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    .line 571
    .local v0, "cmd":[Ljava/lang/String;
    :try_start_0
    const-string v11, "WifiApDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cmd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "iptables -nvx -L FORWARD | grep "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 573
    .local v9, "p":Ljava/lang/Process;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .end local v4    # "input":Ljava/io/DataInputStream;
    .local v5, "input":Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .line 575
    .local v7, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 576
    const-string v11, "WifiApDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "line : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 578
    .local v10, "result":[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    add-long/2addr v2, v12

    .line 579
    goto :goto_0

    .line 581
    .end local v10    # "result":[Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 582
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 592
    if-eqz v5, :cond_1

    .line 593
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 599
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    move-object v4, v5

    .end local v5    # "input":Ljava/io/DataInputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "p":Ljava/lang/Process;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    :cond_2
    :goto_1
    return-object v11

    .line 583
    .end local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "input":Ljava/io/DataInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 585
    const/4 v11, 0x0

    .line 592
    if-eqz v5, :cond_3

    .line 593
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v4, v5

    .line 596
    .end local v5    # "input":Ljava/io/DataInputStream;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    goto :goto_1

    .line 594
    .end local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "input":Ljava/io/DataInputStream;
    :catch_1
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    const/4 v11, 0x0

    move-object v4, v5

    .end local v5    # "input":Ljava/io/DataInputStream;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    goto :goto_1

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "input":Ljava/io/DataInputStream;
    :catch_2
    move-exception v1

    .line 595
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    const/4 v11, 0x0

    move-object v4, v5

    .end local v5    # "input":Ljava/io/DataInputStream;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    goto :goto_1

    .line 587
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "p":Ljava/lang/Process;
    :catch_3
    move-exception v1

    .line 588
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 589
    const/4 v11, 0x0

    .line 592
    if-eqz v4, :cond_2

    .line 593
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 594
    :catch_4
    move-exception v1

    .line 595
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    const/4 v11, 0x0

    goto :goto_1

    .line 591
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 592
    :goto_3
    if-eqz v4, :cond_4

    .line 593
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 596
    :cond_4
    throw v11

    .line 594
    :catch_5
    move-exception v1

    .line 595
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    const/4 v11, 0x0

    goto :goto_1

    .line 591
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "input":Ljava/io/DataInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "input":Ljava/io/DataInputStream;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    goto :goto_3

    .line 587
    .end local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "input":Ljava/io/DataInputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "input":Ljava/io/DataInputStream;
    .restart local v4    # "input":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public insert(Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;)J
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 275
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "mac"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v4, "ip"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v4, "usage"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getUsage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v4, "limit_data"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getLimit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v4, "temp_usage"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getTempUsage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v4, "remain"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getRemain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v4, "accept"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getAccept()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    const-string/jumbo v4, "reject"

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 284
    const-string/jumbo v4, "wifiapdata"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 285
    .local v2, "row":J
    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiApDatabaseHelper;->addList(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-wide v2
.end method

.method public isWifiApDbContain(Ljava/lang/String;)Z
    .locals 12
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 258
    const/4 v9, 0x0

    .line 259
    .local v9, "result":Z
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 260
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 261
    .local v8, "cursor":Landroid/database/Cursor;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    .line 263
    .local v4, "args":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "wifiapdata"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "mac"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, "ip"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "usage"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "limit_data"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v5, "temp_usage"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "remain"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "accept"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "reject"

    aput-object v5, v2, v3

    const-string/jumbo v3, "mac=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 264
    if-eqz v8, :cond_2

    move v2, v10

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    move v1, v10

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 265
    const/4 v9, 0x1

    .line 267
    :cond_0
    if-eqz v8, :cond_1

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_1
    return v9

    :cond_2
    move v2, v11

    .line 264
    goto :goto_0

    :cond_3
    move v1, v11

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public isWifiApListContain(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Z
    iget-object v1, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    iget-object v1, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 254
    :cond_0
    return v0
.end method

.method public modifyLimtData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "limit"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 302
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "usage"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v3, "limit_data"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v3, "temp_usage"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v3, "remain"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 308
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v3, "wifiapdata"

    const-string/jumbo v4, "mac=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->clearIptablesCmd(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->monitorStaData(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->resume()V

    .line 314
    :cond_0
    return-void
.end method

.method public modifyUsageData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-virtual/range {p0 .. p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v11

    .line 318
    .local v11, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v11}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "ip":Ljava/lang/String;
    new-instance v10, Ljava/math/BigDecimal;

    invoke-virtual {v11}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getLimit()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 320
    .local v10, "limit":Ljava/math/BigDecimal;
    new-instance v12, Ljava/math/BigDecimal;

    invoke-virtual {v11}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getRemain()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 321
    .local v12, "preRemain":Ljava/math/BigDecimal;
    const/4 v13, 0x0

    .line 322
    .local v13, "remain":Ljava/lang/String;
    new-instance v15, Ljava/math/BigDecimal;

    invoke-virtual {v11}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getTempUsage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 323
    .local v15, "temp_usage":Ljava/math/BigDecimal;
    new-instance v17, Ljava/math/BigDecimal;

    invoke-virtual {v11}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getUsage()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 324
    .local v17, "usage":Ljava/math/BigDecimal;
    new-instance v4, Ljava/math/BigDecimal;

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 325
    .local v4, "ZERO":Ljava/math/BigDecimal;
    const-string v18, "WifiApDatabaseHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "modifyUsageData mac : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", ip : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", limit : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", preRemain : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", temp_usage : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", usage : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v15, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    if-nez v18, :cond_1

    .line 327
    new-instance v17, Ljava/math/BigDecimal;

    .end local v17    # "usage":Ljava/math/BigDecimal;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v17    # "usage":Ljava/math/BigDecimal;
    move-object/from16 v15, v17

    .line 329
    invoke-virtual {v10}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 366
    :cond_0
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v18, "usage"

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v18, "temp_usage"

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v18, "remain"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 371
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v18

    .line 372
    .local v5, "args":[Ljava/lang/String;
    const-string/jumbo v18, "wifiapdata"

    const-string/jumbo v19, "mac=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v6, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    return-void

    .line 330
    .end local v5    # "args":[Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-virtual {v15, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 331
    new-instance v14, Ljava/math/BigDecimal;

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 332
    .local v14, "sub":Ljava/math/BigDecimal;
    invoke-virtual {v14, v12}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    if-ltz v18, :cond_3

    .line 333
    move-object/from16 v17, v4

    .line 334
    move-object v15, v4

    .line 335
    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 336
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->setDataMonitor(Ljava/lang/String;Z)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->rejectStaData(Ljava/lang/String;Z)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 337
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->updateMonitorAndReject(Ljava/lang/String;ZZ)V

    .line 339
    :cond_2
    new-instance v8, Landroid/content/Intent;

    const-string v18, "com.samsung.android.net.wifi.ap.STA_DATA"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiApDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 341
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v14, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    if-gtz v18, :cond_4

    .line 342
    new-instance v16, Ljava/math/BigDecimal;

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 343
    .end local v15    # "temp_usage":Ljava/math/BigDecimal;
    .local v16, "temp_usage":Ljava/math/BigDecimal;
    new-instance v17, Ljava/math/BigDecimal;

    .end local v17    # "usage":Ljava/math/BigDecimal;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v17    # "usage":Ljava/math/BigDecimal;
    invoke-virtual {v12}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, v16

    .end local v16    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v15    # "temp_usage":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 346
    :cond_4
    new-instance v17, Ljava/math/BigDecimal;

    .end local v17    # "usage":Ljava/math/BigDecimal;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v17    # "usage":Ljava/math/BigDecimal;
    new-instance v16, Ljava/math/BigDecimal;

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 348
    .end local v15    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v16    # "temp_usage":Ljava/math/BigDecimal;
    invoke-virtual {v12}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, v16

    .end local v16    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v15    # "temp_usage":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 350
    .end local v14    # "sub":Ljava/math/BigDecimal;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v15, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 351
    new-instance v16, Ljava/math/BigDecimal;

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 352
    .end local v15    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v16    # "temp_usage":Ljava/math/BigDecimal;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v18

    if-ltz v18, :cond_7

    .line 353
    move-object/from16 v17, v4

    .line 354
    move-object v15, v4

    .line 355
    .end local v16    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v15    # "temp_usage":Ljava/math/BigDecimal;
    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 356
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->setDataMonitor(Ljava/lang/String;Z)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->rejectStaData(Ljava/lang/String;Z)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 357
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->updateMonitorAndReject(Ljava/lang/String;ZZ)V

    .line 359
    :cond_6
    new-instance v8, Landroid/content/Intent;

    const-string v18, "com.samsung.android.net.wifi.ap.STA_DATA"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiApDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 362
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v15    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v16    # "temp_usage":Ljava/math/BigDecimal;
    :cond_7
    new-instance v17, Ljava/math/BigDecimal;

    .end local v17    # "usage":Ljava/math/BigDecimal;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v17    # "usage":Ljava/math/BigDecimal;
    invoke-virtual {v10}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->addAndSubtract(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, v16

    .end local v16    # "temp_usage":Ljava/math/BigDecimal;
    .restart local v15    # "temp_usage":Ljava/math/BigDecimal;
    goto/16 :goto_0
.end method

.method public monitorStaData(Ljava/lang/String;)V
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 423
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v2

    .line 424
    .local v2, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "ip":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getRemain()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, "remain":Ljava/math/BigDecimal;
    new-instance v0, Ljava/math/BigDecimal;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "ZERO":Ljava/math/BigDecimal;
    const-string v4, "WifiApDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "monitorStaData mac : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", accept : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getAccept()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", remain : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-nez v4, :cond_2

    .line 429
    :cond_0
    invoke-virtual {p0, v1, v7}, Landroid/net/wifi/WifiApDatabaseHelper;->rejectStaData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    invoke-virtual {p0, p1, v8, v7}, Landroid/net/wifi/WifiApDatabaseHelper;->updateMonitorAndReject(Ljava/lang/String;ZZ)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    invoke-virtual {p0, v1, v7}, Landroid/net/wifi/WifiApDatabaseHelper;->setDataMonitor(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    invoke-virtual {p0, p1, v7, v8}, Landroid/net/wifi/WifiApDatabaseHelper;->updateMonitorAndReject(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 181
    const-string v0, "CREATE TABLE wifiapdata (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, mac STRING NOT NULL , ip STRING NOT NULL , usage STRING NOT NULL , limit_data STRING NOT NULL , temp_usage STRING NOT NULL , remain STRING NOT NULL , accept STRING , reject STRING)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 187
    return-void
.end method

.method public rejectStaData(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 534
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rejectStaData ip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mobileInterface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "input_cmd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 537
    .local v1, "output_cmd":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 538
    if-eqz p2, :cond_0

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -A FORWARD  -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -j REJECT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -A FORWARD  -d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -j REJECT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->execIptables(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 547
    :goto_1
    return v2

    .line 542
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -D FORWARD  -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -j REJECT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -D FORWARD  -d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -j REJECT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 547
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeStaFromApList(Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeStaFromApList mac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", List size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 474
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    .local v1, "mMac":Ljava/lang/String;
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->clearIptablesCmd(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->setUsageToZero(Ljava/lang/String;)V

    .line 481
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 486
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "mMac":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setDataMonitor(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 517
    const-string v2, "WifiApDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataMonitor ip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mobileInterface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "input_cmd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 520
    .local v1, "output_cmd":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 521
    if-eqz p2, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -A FORWARD  -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -A FORWARD  -d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApDatabaseHelper;->execIptables(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 530
    :goto_1
    return v2

    .line 525
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -D FORWARD  -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptables -D FORWARD  -d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 530
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDatabaseDefaultValue()V
    .locals 12

    .prologue
    .line 212
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v10, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "usage"

    const-string v2, "0"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 217
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "wifiapdata"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "mac"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "ip"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "usage"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "limit_data"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "temp_usage"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "remain"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "accept"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "reject"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 218
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 221
    .local v11, "mac":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    .line 222
    .local v8, "args":[Ljava/lang/String;
    const-string/jumbo v1, "wifiapdata"

    const-string/jumbo v2, "mac=?"

    invoke-virtual {v0, v1, v10, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    .end local v8    # "args":[Ljava/lang/String;
    .end local v11    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_0

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 226
    :cond_1
    if-eqz v9, :cond_2

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_2
    return-void
.end method

.method public setUsageToZero(Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 490
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "usage"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 493
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v3, "wifiapdata"

    const-string/jumbo v4, "mac=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public skipGetUsageData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 551
    iget-object v2, p0, Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v1

    .line 554
    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v0

    .line 555
    .local v0, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getAccept()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getReject()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 561
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMonitorAndReject(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "accept"    # Z
    .param p3, "reject"    # Z

    .prologue
    .line 376
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "accept"

    if-eqz p2, :cond_0

    const-string/jumbo v3, "true"

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v4, "reject"

    if-eqz p3, :cond_1

    const-string/jumbo v3, "true"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Landroid/net/wifi/WifiApDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 380
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 381
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v3, "wifiapdata"

    const-string/jumbo v4, "mac=?"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 382
    return-void

    .line 377
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v3, "false"

    goto :goto_0

    .line 378
    :cond_1
    const-string v3, "false"

    goto :goto_1
.end method
