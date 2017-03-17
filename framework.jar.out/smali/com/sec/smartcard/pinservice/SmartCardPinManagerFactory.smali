.class public Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
.super Ljava/lang/Object;
.source "SmartCardPinManagerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCardPinManagerFactory"

.field private static mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

.field private static mScPinMgrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/smartcard/pinservice/SmartCardPinManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
    .locals 3

    .prologue
    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    if-nez v0, :cond_0

    const-string v0, "SmartCardPinManagerFactory"

    const-string v1, "Creating a new factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    invoke-direct {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    :cond_0
    const-string v0, "SmartCardPinManagerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    return-object v0
.end method


# virtual methods
.method public deinitializeCAC(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .local v1, "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "deinitializeCAC entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deinitializeCAC: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deinitializeCAC: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->unbindSmartCardPinService()V

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "key":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .local v1, "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "getSmartcardPinMgr entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    :cond_2
    if-nez v1, :cond_3

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Pin mgr for userHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not in map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;-><init>(Landroid/os/UserHandle;Landroid/content/Context;I)V

    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Returning smartcard pin mgr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .local v1, "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "getSmartcardPinMgr_Sync entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v0, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    :cond_2
    if-nez v1, :cond_3

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Pin mgr for userHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not in map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .end local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;-><init>(Landroid/os/UserHandle;Landroid/content/Context;I)V

    .restart local v1    # "scPinMgr":Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    invoke-virtual {v1, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService_Sync(Landroid/os/UserHandle;)V

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Returning smartcard pin mgr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto/16 :goto_0
.end method
