.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_ARGS:I

.field public static final CMD_BUF_SIZE_MAX:I = 0x300

.field public static final DOMAINFILTERCMD:Ljava/lang/String; = "domainFilterCmd"

.field private static final EMPTY_DATABASE:I = 0x0

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_CLEAR:Ljava/lang/String; = "CLEAR"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final OP_REPLACE:Ljava/lang/String; = "REPLACE"

.field public static final OP_REPORT:Ljava/lang/String; = "REPORT"

.field public static final ReportBlockedDomain:I = 0x320

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Ljava/lang/Thread;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "DomainFilter"

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "domainFilterCmd"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    rsub-int v0, v0, 0x300

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 131
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v3, "filterPkg":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v7, "filterUser":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 145
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v11, "filterBoot":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    .line 156
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private checkAdminInDatabase(I)I
    .locals 6
    .param p1, "adminUid"    # I

    .prologue
    const/4 v2, 0x0

    .line 998
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 999
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const-string v5, "adminUid"

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1011
    :goto_0
    return v2

    .line 1006
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1008
    const/4 v2, 0x1

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private clearReportForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1167
    return-void
.end method

.method private concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2, "headerSize"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .param p4, "listValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v0, v8

    .line 934
    .local v0, "argSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v2, "finalArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 936
    .local v3, "listValuesSize":I
    if-eqz p4, :cond_0

    .line 937
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v3, v8

    .line 939
    :cond_0
    if-eqz p4, :cond_1

    add-int v8, p2, v3

    add-int/2addr v8, v0

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_3

    .line 940
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 941
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 971
    :cond_2
    return-void

    .line 945
    :cond_3
    const-string v8, ";"

    invoke-virtual {p4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 946
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 947
    .local v1, "counter":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .local v4, "newList":Ljava/lang/StringBuilder;
    add-int v6, p2, v0

    .line 950
    .local v6, "totalTemp":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 951
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v7, v8

    .line 952
    .local v7, "valueSize":I
    add-int v8, v6, v7

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_5

    .line 953
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 954
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 959
    add-int/2addr v6, v7

    .line 963
    goto :goto_1

    .line 956
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 964
    .end local v7    # "valueSize":I
    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 965
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 968
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "stringInDB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1057
    .local v0, "listFromDBStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1060
    :cond_0
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "setFromDB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    :cond_0
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    :goto_0
    return-object v0

    .line 1051
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1052
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized executeCommand(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 976
    :try_start_1
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    .line 977
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 990
    :cond_0
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    const-string/jumbo v3, "domainFilterCmd"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->execute(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 991
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 995
    :goto_1
    monitor-exit p0

    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to wait for socket creation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 983
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 984
    .local v1, "illex":Ljava/lang/IllegalThreadStateException;
    :try_start_5
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Thread already started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 974
    .end local v1    # "illex":Ljava/lang/IllegalThreadStateException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 992
    :catch_2
    move-exception v0

    .line 993
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to send command to daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 233
    .local v2, "token":J
    const/4 v1, 0x0

    .line 235
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 240
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 244
    :cond_0
    const/4 v4, -0x1

    .line 245
    :goto_1
    return v4

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception getting package info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 245
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "selectionValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "listInDB":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v0, ""

    .line 227
    :cond_0
    return-object v0
.end method

.method private initDaemonCache()V
    .locals 20

    .prologue
    .line 842
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 843
    .local v17, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string v4, "adminUid"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 846
    .local v10, "admins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 847
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 848
    .local v9, "adminSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 849
    .local v8, "admin":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 850
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 851
    .local v12, "appUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "adminUid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string/jumbo v4, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v16

    .line 855
    .local v16, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 856
    .local v15, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v2, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 859
    .local v6, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v2, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 861
    .local v7, "whiteListInDB":Ljava/lang/String;
    const/16 v18, 0x0

    .line 862
    .local v18, "uid":Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 863
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 869
    :cond_1
    :goto_2
    if-eqz v18, :cond_0

    if-nez v6, :cond_2

    if-eqz v7, :cond_0

    .line 870
    :cond_2
    const-string v3, "ADD"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 865
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v11

    .line 866
    .local v11, "appUidInt":I
    const/4 v2, -0x1

    if-eq v11, v2, :cond_1

    .line 867
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 874
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "whiteListInDB":Ljava/lang/String;
    .end local v11    # "appUidInt":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "uid":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_0

    .line 877
    .end local v8    # "admin":Ljava/lang/Integer;
    .end local v9    # "adminSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v12    # "appUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "userId":I
    :cond_5
    return-void
.end method

.method private initReportCache()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 880
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 881
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 882
    .local v9, "reportEnabled":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterReportStatus"

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 885
    .local v7, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initReportCache - No admin found in report status table"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    :goto_0
    return-void

    .line 889
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 890
    .local v6, "admin":Landroid/content/ContentValues;
    const-string/jumbo v0, "userId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 891
    .local v10, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 893
    .end local v6    # "admin":Landroid/content/ContentValues;
    .end local v10    # "userId":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 894
    const-string v1, "REPORT"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUserIdMap()V
    .locals 14

    .prologue
    .line 159
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 160
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 162
    .local v8, "userManager":Landroid/os/UserManager;
    if-eqz v8, :cond_2

    .line 163
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 164
    .local v9, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v9, :cond_2

    .line 165
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v11

    .line 166
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 167
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v10, 0x80

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .line 170
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 171
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 172
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 176
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 174
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .end local v9    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1101
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v2, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1102
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportStatus"

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1105
    .local v1, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    :cond_0
    const/4 v2, 0x0

    .line 1108
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 185
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 186
    .local v5, "userId":I
    if-eq v5, v7, :cond_2

    .line 187
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v7

    .line 188
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 190
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 192
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 195
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 198
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 208
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 209
    .local v6, "userId":I
    if-eq v6, v1, :cond_1

    .line 210
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 211
    :try_start_0
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 212
    .local v7, "userIdObj":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    const-string v1, "CLEAR"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    monitor-exit v8

    .line 219
    .end local v7    # "userIdObj":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, "pkgAdded":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 255
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    if-nez v14, :cond_2

    .line 256
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v18

    .line 261
    .local v18, "uid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 262
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to retrieve app info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 267
    :try_start_0
    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 268
    .local v9, "objUserID":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 269
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v13, "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v13    # "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    const-string v6, ""

    .local v6, "blackListInDB":Ljava/lang/String;
    const-string v7, ""

    .line 278
    .local v7, "whiteListInDB":Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v15, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "#SelectClause#"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 284
    .local v12, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const-string/jumbo v2, "packageName"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string/jumbo v4, "signature"

    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    .line 288
    .local v16, "signature":Ljava/lang/String;
    const/16 v17, 0x0

    .line 289
    .local v17, "signatureMatch":Z
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    .line 293
    .local v8, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 295
    .local v10, "identity":J
    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v8, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    .line 298
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    if-eqz v17, :cond_1

    .line 304
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v10    # "identity":J
    :cond_4
    const-string v2, "blacklist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 305
    const-string/jumbo v2, "whitelist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :cond_5
    const-string v3, "ADD"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "whiteListInDB":Ljava/lang/String;
    .end local v12    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "signatureMatch":Z
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 275
    .end local v9    # "objUserID":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 298
    .restart local v6    # "blackListInDB":Ljava/lang/String;
    .restart local v7    # "whiteListInDB":Ljava/lang/String;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v9    # "objUserID":Ljava/lang/Integer;
    .restart local v10    # "identity":J
    .restart local v12    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "signatureMatch":Z
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 318
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 319
    .local v11, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "pkgRemoved":Ljava/lang/String;
    if-eq v11, v1, :cond_1

    if-eqz v8, :cond_1

    .line 321
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v12

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 323
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "uid":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v9, "selectionValues":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    invoke-static {v0, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "#SelectClause#"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 335
    .local v7, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v1, "REMOVE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v7    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "selectionValues":Landroid/content/ContentValues;
    .end local v10    # "uid":Ljava/lang/String;
    :cond_0
    monitor-exit v12

    .line 341
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 348
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 349
    .local v10, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "pkgReplaced":Ljava/lang/String;
    if-eq v10, v3, :cond_0

    if-nez v9, :cond_2

    .line 351
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 358
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 360
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    .line 361
    monitor-exit v1

    goto :goto_0

    .line 372
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 364
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 365
    .local v8, "oldUid":I
    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v7

    .line 366
    .local v7, "newUid":I
    if-ne v7, v3, :cond_5

    .line 367
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve app info"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v1

    goto :goto_0

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    if-eq v8, v7, :cond_1

    .line 374
    const-string v1, "REPLACE"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1140
    const/4 v2, -0x1

    .line 1142
    .local v2, "userId":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1146
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1149
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string/jumbo v3, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterReportTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1154
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to save domain report in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1143
    :catch_0
    move-exception v1

    .line 1144
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing userId received from daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;

    .prologue
    .line 899
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 903
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_0
    const-string v2, "REPORT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CLEAR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "REPLACE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    if-nez p5, :cond_3

    .line 909
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 929
    :cond_2
    :goto_0
    return-void

    .line 913
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .line 914
    .local v0, "cmdHeaderSize":I
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 915
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 916
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 919
    :cond_4
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 921
    :cond_6
    const-string v2, "BLACKLIST"

    invoke-direct {p0, v1, v0, v2, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_7
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    :cond_9
    const-string v2, "WHITELIST"

    invoke-direct {p0, v1, v0, v2, p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trimDomainUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1039
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1040
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1042
    :cond_0
    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1045
    :cond_1
    return-void
.end method

.method private updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    const/4 v3, 0x0

    .line 804
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 805
    .local v11, "userId":I
    const-string v0, "CLEAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const-string v1, "CLEAR"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_0
    return-void

    .line 807
    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "ADD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "REMOVE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 809
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 810
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 811
    .local v10, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 812
    .local v9, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 813
    .local v2, "appId":Ljava/lang/String;
    const-string v0, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 818
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 820
    const/4 v4, 0x0

    .local v4, "blackList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 821
    .local v5, "whiteList":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .line 822
    .local v7, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    .line 823
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 824
    const-string v0, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 828
    :cond_4
    :goto_2
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v7

    .line 829
    if-eqz v7, :cond_5

    .line 830
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 831
    const-string v0, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_3
    move-object v0, p0

    move-object v1, p3

    .line 835
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .end local v4    # "blackList":Ljava/lang/String;
    .end local v5    # "whiteList":Ljava/lang/String;
    .end local v7    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 815
    :cond_7
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 826
    .restart local v4    # "blackList":Ljava/lang/String;
    .restart local v5    # "whiteList":Ljava/lang/String;
    .restart local v7    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string v4, ""

    goto :goto_2

    .line 833
    :cond_9
    const-string v5, ""

    goto :goto_3
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 41
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-eqz v36, :cond_1

    .line 382
    :cond_0
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 383
    .local v23, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v36, 0x0

    new-instance v37, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v39, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v40, "No rule was specified."

    invoke-direct/range {v37 .. v40}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v37, v23, v36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v23

    .line 568
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v24, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    monitor-exit p0

    return-object v24

    .line 390
    .end local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 391
    .local v5, "adminUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 392
    .local v29, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v4

    .line 393
    .local v4, "adminDb":I
    const/16 v36, -0x1

    move/from16 v0, v36

    if-ne v4, v0, :cond_2

    .line 394
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 395
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v36, 0x0

    new-instance v37, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v39, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v40, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v37 .. v40}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v37, v23, v36

    move-object/from16 v24, v23

    .line 397
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0

    .line 400
    .end local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v36, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 401
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v28, 0x1

    .line 402
    .local v28, "signatureMatch":Z
    const-string v19, ""

    .line 403
    .local v19, "invalidDomain":Ljava/lang/String;
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v33, "values":Landroid/content/ContentValues;
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 405
    .local v26, "selectionValues":Landroid/content/ContentValues;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v32, "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 408
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v17, 0x0

    .local v17, "i":I
    move-object v7, v6

    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_19

    .line 409
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 410
    .local v25, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    if-nez v25, :cond_3

    .line 411
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "No rule was specified."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    move-object v6, v7

    .line 408
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v17, v17, 0x1

    move-object v7, v6

    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 414
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v36

    if-nez v36, :cond_4

    .line 415
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "Invalid AppIdentity object."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 418
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v36

    if-eqz v36, :cond_5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v36

    if-eqz v36, :cond_5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 420
    :cond_5
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "Invalid domain."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 424
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 425
    .local v22, "packageName":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v27

    .line 426
    .local v27, "signature":Ljava/lang/String;
    const-string v36, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    if-eqz v27, :cond_7

    .line 427
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "There is no signature related to all applications."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 430
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    invoke-static/range {v22 .. v22}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_8

    .line 431
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Invalid package name. - "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_2

    .line 440
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    if-eqz v7, :cond_9

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-nez v36, :cond_1b

    .line 441
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v9

    .line 442
    .local v9, "appUid":I
    const/16 v36, -0x1

    move/from16 v0, v36

    if-eq v9, v0, :cond_1b

    .line 443
    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 444
    .local v30, "userIdObj":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    if-nez v7, :cond_12

    .line 446
    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    new-instance v36, Ljava/lang/Integer;

    move-object/from16 v0, v36

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :goto_3
    monitor-exit v37
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 456
    .end local v9    # "appUid":I
    .end local v30    # "userIdObj":Ljava/lang/Integer;
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-string v37, "android"

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v12

    .line 458
    .local v12, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v20

    .line 460
    .local v20, "identity":J
    if-eqz v27, :cond_a

    :try_start_5
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-static {v12, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v36

    if-nez v36, :cond_a

    .line 463
    const/16 v28, 0x0

    .line 466
    :cond_a
    :try_start_6
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    const/16 v31, 0x1

    .line 469
    .local v31, "validDomain":Z
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 470
    .local v13, "domain":Ljava/lang/String;
    move-object/from16 v19, v13

    .line 471
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v31

    .line 472
    if-nez v31, :cond_b

    .line 475
    .end local v13    # "domain":Ljava/lang/String;
    :cond_c
    if-eqz v31, :cond_e

    .line 476
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 477
    .restart local v13    # "domain":Ljava/lang/String;
    move-object/from16 v19, v13

    .line 478
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v31

    .line 479
    if-nez v31, :cond_d

    .line 483
    .end local v13    # "domain":Ljava/lang/String;
    :cond_e
    if-eqz v31, :cond_18

    .line 484
    const/4 v8, 0x0

    .line 485
    .local v8, "appIsInstalled":Z
    if-nez v28, :cond_f

    .line 487
    if-eqz v6, :cond_13

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 488
    const/4 v8, 0x1

    .line 494
    :cond_f
    :goto_5
    if-nez v28, :cond_10

    if-nez v8, :cond_17

    .line 497
    :cond_10
    const-string v36, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string/jumbo v36, "packageName"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v36, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 501
    .local v11, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v36, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 506
    .local v35, "whiteListInDB":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v14

    .line 507
    .local v14, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    .line 508
    .local v15, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 509
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 513
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    .line 514
    .local v10, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v34

    .line 518
    .local v34, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v36

    if-eqz v36, :cond_11

    move-object/from16 v0, v34

    invoke-interface {v0, v15}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v36

    if-nez v36, :cond_14

    :cond_11
    const/16 v16, 0x1

    .line 520
    .local v16, "hasChangesToBeMade":Z
    :goto_6
    if-eqz v16, :cond_15

    .line 523
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v11

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v35

    .line 536
    const-string v36, "blacklist"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string/jumbo v36, "whitelist"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string/jumbo v36, "signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v36, v0

    const-string v37, "DomainFilterTable"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v33

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v36

    if-nez v36, :cond_16

    .line 541
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "Failed to add/update rule in the database."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    .line 550
    :goto_7
    invoke-virtual/range {v33 .. v33}, Landroid/content/ContentValues;->clear()V

    .line 551
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 381
    .end local v4    # "adminDb":I
    .end local v5    # "adminUid":I
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "appIsInstalled":Z
    .end local v10    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "blackListInDB":Ljava/lang/String;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "hasChangesToBeMade":Z
    .end local v17    # "i":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "invalidDomain":Ljava/lang/String;
    .end local v20    # "identity":J
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v26    # "selectionValues":Landroid/content/ContentValues;
    .end local v27    # "signature":Ljava/lang/String;
    .end local v28    # "signatureMatch":Z
    .end local v29    # "userId":I
    .end local v31    # "validDomain":Z
    .end local v32    # "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    .end local v33    # "values":Landroid/content/ContentValues;
    .end local v34    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v35    # "whiteListInDB":Ljava/lang/String;
    :catchall_0
    move-exception v36

    monitor-exit p0

    throw v36

    .line 450
    .restart local v4    # "adminDb":I
    .restart local v5    # "adminUid":I
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "appUid":I
    .restart local v17    # "i":I
    .restart local v19    # "invalidDomain":Ljava/lang/String;
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .restart local v26    # "selectionValues":Landroid/content/ContentValues;
    .restart local v27    # "signature":Ljava/lang/String;
    .restart local v28    # "signatureMatch":Z
    .restart local v29    # "userId":I
    .restart local v30    # "userIdObj":Ljava/lang/Integer;
    .restart local v32    # "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    .restart local v33    # "values":Landroid/content/ContentValues;
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/Map;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v36, Ljava/lang/Integer;

    move-object/from16 v0, v36

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_3

    .line 453
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v36

    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_8
    :try_start_8
    monitor-exit v37
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v36

    .line 466
    .end local v9    # "appUid":I
    .end local v30    # "userIdObj":Ljava/lang/Integer;
    .restart local v12    # "ctx":Landroid/content/Context;
    .restart local v20    # "identity":J
    :catchall_2
    move-exception v36

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v36

    .line 490
    .restart local v8    # "appIsInstalled":Z
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v31    # "validDomain":Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 518
    .restart local v10    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "blackListInDB":Ljava/lang/String;
    .restart local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v35    # "whiteListInDB":Ljava/lang/String;
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 530
    .restart local v16    # "hasChangesToBeMade":Z
    :cond_15
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "The specified rule is already in the database."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    goto/16 :goto_2

    .line 545
    :cond_16
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "The rule(s) was successfully added/updated."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    goto :goto_7

    .line 553
    .end local v10    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "blackListInDB":Ljava/lang/String;
    .end local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "hasChangesToBeMade":Z
    .end local v34    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v35    # "whiteListInDB":Ljava/lang/String;
    :cond_17
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "Given signature does not match with the application."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    goto/16 :goto_2

    .line 558
    .end local v8    # "appIsInstalled":Z
    :cond_18
    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Invalid domain. - "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v23, v17

    goto/16 :goto_2

    .line 566
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "identity":J
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v27    # "signature":Ljava/lang/String;
    .end local v31    # "validDomain":Z
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_19
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_1a

    if-eqz v28, :cond_1a

    .line 567
    const-string v36, "ADD"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_1a
    move-object/from16 v24, v23

    .line 568
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto/16 :goto_0

    .line 453
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v24    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "appUid":I
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v25    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .restart local v27    # "signature":Ljava/lang/String;
    .restart local v30    # "userIdObj":Ljava/lang/Integer;
    :catchall_3
    move-exception v36

    goto :goto_8

    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "appUid":I
    .end local v30    # "userIdObj":Ljava/lang/Integer;
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1b
    move-object v6, v7

    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_4
.end method

.method adminRemoved(I)V
    .locals 3
    .param p1, "adminUid"    # I

    .prologue
    .line 1017
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1018
    .local v0, "userId":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1019
    .local v1, "userIdObj":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1021
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1023
    :cond_0
    return-void
.end method

.method enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1064
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1065
    .local v6, "adminUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1066
    .local v8, "userId":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1067
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1068
    const-string/jumbo v0, "userId"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1069
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1070
    .local v7, "selection":Landroid/content/ContentValues;
    const-string v0, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterReportStatus"

    invoke-virtual {v0, v1, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Failed to change Domain Filter report status on database."

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1091
    :goto_0
    return-object v0

    .line 1077
    :cond_0
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1078
    .local v9, "userIdObj":Ljava/lang/Integer;
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1079
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    const-string v1, "REPORT"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_1
    :goto_1
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    if-eqz p2, :cond_3

    const-string v0, "Domain Report successfully enabled."

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 1081
    :cond_2
    if-nez p2, :cond_1

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1084
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    const-string v1, "REPORT"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1091
    :cond_3
    const-string v0, "Domain Report successfully disabled."

    goto :goto_2
.end method

.method getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1114
    .local v6, "userId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v4, "reportList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterReport;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1131
    :cond_0
    return-object v4

    .line 1118
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v5, "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1120
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1121
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterReportTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1123
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1124
    .local v3, "report":Landroid/content/ContentValues;
    const-string/jumbo v7, "packageName"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1125
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1126
    :cond_3
    new-instance v7, Lcom/sec/enterprise/firewall/DomainFilterReport;

    const-string/jumbo v8, "time"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Lcom/sec/enterprise/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v9, "domainRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .local v13, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 762
    .local v3, "adminUid":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v5, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v15, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "DomainFilterTable"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 768
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 769
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v17, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 770
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 771
    .local v14, "signature":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 772
    :cond_1
    const-string v17, "blacklist"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v17, "whitelist"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 774
    .local v16, "whiteListInDB":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 775
    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 779
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 780
    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 784
    :goto_2
    new-instance v4, Lcom/sec/enterprise/AppIdentity;

    invoke-direct {v4, v11, v14}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v4, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    new-instance v12, Lcom/sec/enterprise/firewall/DomainFilterRule;

    invoke-direct {v12, v4, v5, v15}, Lcom/sec/enterprise/firewall/DomainFilterRule;-><init>(Lcom/sec/enterprise/AppIdentity;Ljava/util/List;Ljava/util/List;)V

    .line 786
    .local v12, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    .end local v4    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v12    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 782
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 789
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "signature":Ljava/lang/String;
    .end local v16    # "whiteListInDB":Ljava/lang/String;
    :cond_4
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 790
    return-object v9
.end method

.method isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1096
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .locals 6
    .param p1, "adminUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1029
    const-string v1, "CLEAR"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_0
    return-void
.end method

.method declared-synchronized removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 576
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 577
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 578
    .local v12, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "No rule was specified."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v12

    .line 754
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v13, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    monitor-exit p0

    return-object v13

    .line 584
    .end local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 586
    .local v4, "adminUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v22

    if-nez v22, :cond_2

    .line 587
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 588
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "The rules are already cleared."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    :cond_1
    :goto_1
    move-object v13, v12

    .line 754
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0

    .line 591
    .end local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 592
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 593
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 576
    .end local v4    # "adminUid":I
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 596
    .restart local v4    # "adminUid":I
    :cond_3
    :try_start_2
    sget-object v22, Lcom/sec/enterprise/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 598
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 599
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 600
    .local v15, "selectionValues":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v22

    if-gtz v22, :cond_4

    .line 603
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "Failed to clear rules from database."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    .line 611
    :goto_2
    const/16 v22, 0x0

    const-string v23, "CLEAR"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 607
    :cond_4
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Rules successfully cleared. Admin: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    goto :goto_2

    .line 613
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    :cond_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v18, "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 615
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .local v19, "values":Landroid/content/ContentValues;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 618
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_13

    .line 619
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 620
    .local v14, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    if-nez v22, :cond_6

    .line 621
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Invalid AppIdentity object."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    .line 618
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 625
    :cond_6
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 626
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v16

    .line 627
    .local v16, "signature":Ljava/lang/String;
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    if-eqz v16, :cond_7

    .line 629
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "There is no signature related to all applications."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_4

    .line 632
    :cond_7
    invoke-static {v11}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 633
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid package name. - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_4

    .line 640
    :cond_8
    const-string v22, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v22, "packageName"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    const-string/jumbo v24, "signature"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 646
    .local v17, "signatureInDB":Ljava/lang/String;
    if-eqz v16, :cond_9

    if-eqz v17, :cond_b

    :cond_9
    if-nez v16, :cond_a

    if-nez v17, :cond_b

    :cond_a
    if-eqz v16, :cond_c

    if-eqz v17, :cond_c

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 650
    :cond_b
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Signature does not match with the previous added."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    .line 746
    :goto_5
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_4

    .line 654
    :cond_c
    const-string v22, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v22, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 661
    .local v21, "whiteListInDB":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .line 662
    .local v7, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v8

    .line 665
    .local v8, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 669
    .local v9, "hasRulesToDelete":Z
    if-eqz v7, :cond_d

    .line 670
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 671
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 672
    .local v5, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v22

    or-int v9, v9, v22

    .line 684
    .end local v9    # "hasRulesToDelete":Z
    :goto_6
    if-eqz v8, :cond_e

    .line 685
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 686
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v20

    .line 687
    .local v20, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v22

    or-int v9, v9, v22

    .line 700
    .restart local v9    # "hasRulesToDelete":Z
    :goto_7
    if-eqz v9, :cond_f

    .line 702
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 704
    const-string v22, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    .line 712
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v22

    if-gtz v22, :cond_10

    .line 716
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Failed to remove/update rule from the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_5

    .line 677
    .end local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 678
    .restart local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v9, v9, 0x1

    .local v9, "hasRulesToDelete":I
    goto :goto_6

    .line 693
    .end local v9    # "hasRulesToDelete":I
    :cond_e
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 694
    .restart local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v9, v9, 0x1

    .local v9, "hasRulesToDelete":Z
    goto :goto_7

    .line 706
    :cond_f
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule is not in the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_4

    .line 721
    :cond_10
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule was successfuly removed/updated."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_5

    .line 728
    :cond_11
    const-string v22, "blacklist"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string/jumbo v22, "whitelist"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 733
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Failed to remove/update rule from the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    .line 743
    :goto_8
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_5

    .line 738
    :cond_12
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule was successfuly removed/updated."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_8

    .line 750
    .end local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "hasRulesToDelete":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "signatureInDB":Ljava/lang/String;
    .end local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "whiteListInDB":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    .line 751
    const-string v22, "REMOVE"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
