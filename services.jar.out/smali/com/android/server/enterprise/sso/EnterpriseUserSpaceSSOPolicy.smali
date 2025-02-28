.class public Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
.super Landroid/app/enterprise/IEnterpriseUserSpaceSSOPolicy$Stub;
.source "EnterpriseUserSpaceSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;
    }
.end annotation


# static fields
.field private static final CENTRIFY_SSO_PACKAGE:Ljava/lang/String; = "com.centrify.sso.samsung"

.field private static final DBG:Z

.field private static final EMPTY_SIZE:I = 0x0

.field private static final INTENT_SSO_SERVICE_CONNECTED_IN_USERSPACE:Ljava/lang/String; = "sso.enterprise.userspace.setup.success"

.field private static final INTENT_SSO_SERVICE_DISCONNECTED_IN_USERSPACE:Ljava/lang/String; = "sso.enterprise.userspace.disconnected"

.field private static final KERBEROS_SSO_PACKAGE:Ljava/lang/String; = "com.sec.android.service.singlesignon"

.field private static LOCAL_FILE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EnterpriseUserSpaceSSOPolicy"

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;",
            ">;"
        }
    .end annotation
.end field

.field private static mSSOTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/utils/SSOTypeMapData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BIND_ACTION_SSO_SERVICE_FOR_KNOX2:Ljava/lang/String;

.field private final SSO_BIND_FAILURE:I

.field private final SSO_BIND_RESULT_FAILURE:I

.field private final SSO_BIND_RESULT_SUCCESS:I

.field private final SSO_BIND_SUCCESS:I

.field private clientsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBReciever:Landroid/content/BroadcastReceiver;

.field private mBroadCastReciever:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    const-string v0, "/data/system/"

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseUserSpaceSSOPolicy$Stub;-><init>()V

    const-string v0, "com.samsung.safe.auth.mgmt2"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->BIND_ACTION_SSO_SERVICE_FOR_KNOX2:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_SUCCESS:I

    iput v2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_FAILURE:I

    iput v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_RESULT_FAILURE:I

    iput v2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_RESULT_SUCCESS:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->registerReciever()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->updateClintEntry(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindSSOInterfaces(IILjava/lang/String;)Z
    .locals 9
    .param p1, "clientId"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindSSOInterfaces - clientId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindSSOInterfaces - USER ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    .local v4, "result":Z
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    .local v5, "uHandle":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)V

    .local v2, "cSSOConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.safe.auth.mgmt2"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "backupUID":J
    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v2, v7, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    const/4 v2, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method private enforceEnterpriseSSOPermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .local v1, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->isExistingOrFirstClient(II)Z

    move-result v0

    .local v0, "bFirstOrExistingClient":Z
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, " SSO for this User has already being used by another admin"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v2, p1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .end local v0    # "bFirstOrExistingClient":Z
    .end local v1    # "userId":I
    :cond_1
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    const-string v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "bIsContainKey":Z
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EnterpriseUserSpaceSSOPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Does container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has Key in mSSOInterfaceMap? result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    check-cast v1, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .restart local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const-string v2, "EnterpriseUserSpaceSSOPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSSOInterface - SSOnterface not registered for the user space --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private isExistingOrFirstClient(II)Z
    .locals 6
    .param p1, "clientUid"    # I
    .param p2, "containerId"    # I

    .prologue
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistingOrNewClient CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",containerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   clientsList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    const/4 v2, 0x1

    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "item":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "isExistingOrFirstClient: got another client already in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "leaving isExistingOrNewClient "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .restart local v1    # "item":Ljava/lang/String;
    :cond_2
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "isExistingOrFirstClient: got client in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadListFromFile()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "f":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "s":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ActionNameMapForOwnerUser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "f":Ljava/io/FileInputStream;
    .local v2, "f":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .local v6, "s":Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .restart local v5    # "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " After reading from File actionNamesMap :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "f":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .restart local v2    # "f":Ljava/io/FileInputStream;
    .restart local v6    # "s":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .restart local v5    # "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private printArtifacts()V
    .locals 3

    .prologue
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface Map        :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientsList Map      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeClintEntry(I)V
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "found entery to remove."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "items":[Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " after removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateClintEntry(ILjava/lang/String;)V
    .locals 7
    .param p1, "ContainerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateClintEntry , cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pkgname :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "item":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "-"

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "toknizer":Ljava/util/StringTokenizer;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateClintEntry size of tokenizer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateClintEntry Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "toknizer":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V

    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    :cond_2
    return-void
.end method

.method private writeListToFile()V
    .locals 10

    .prologue
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Before Writing to File actionNamesMap :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "file":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "f":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .local v5, "s":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ActionNameMapForOwnerUser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .local v2, "f":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .end local v5    # "s":Ljava/io/ObjectOutputStream;
    .local v6, "s":Ljava/io/ObjectOutputStream;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectOutputStream;
    .restart local v5    # "s":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_0
    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, "Exception occurred while trying to write into file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, "Exception occurred while trying to close object output stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, "Exception occurred while trying to close file output stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "s":Ljava/io/ObjectOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "s":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v0

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectOutputStream;
    .restart local v5    # "s":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3
.end method


# virtual methods
.method public deleteSSOWhiteListInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "deleteSSOWhiteListInUserSpace called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallerUID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v5, 0x0

    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/16 v9, 0xa

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    :cond_1
    const/4 v5, 0x0

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v5

    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pName":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .local v1, "deletePackageList":[Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v6

    .local v6, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v6, :cond_2

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public forceReauthenticateInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "forceReauthenticateInUserSpace called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v7, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    const/4 v1, 0x0

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v1

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v4, "com.centrify.sso.samsung"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAppAllowedStateInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "getAppAllowedStateInUserSpace called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v8, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    :cond_1
    const/4 v1, 0x0

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_2
    :goto_0
    return-object v1

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_3
    const-string v4, "com.centrify.sso.samsung"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_2

    invoke-interface {v2, p3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserId(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .local v0, "userId":I
    const-string v1, "EnterpriseUserSpaceSSOPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user Id  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSSOReadyInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inside  isSSOReadyInUserSpace :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    const/4 v2, 0x0

    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v5, 0xa

    invoke-virtual {v2, v9, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v4

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "clientHandle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, " isSSOReady: SSO for assigned packageName is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API isSSOReadyInUserSpace-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userId":I
    :cond_4
    :try_start_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 14
    .param p1, "uid"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onPreAdminRemoval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v8, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "item":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v0, "-"

    invoke-direct {v9, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "toknizer":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .local v7, "oldUid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .local v3, "ContainerId":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .local v4, "sso":Ljava/lang/String;
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On admin removal, oldUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CtnrId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssoService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->unenrollInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " after removed mSSOInterfaceMap= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .end local v3    # "ContainerId":Ljava/lang/String;
    .end local v4    # "sso":Ljava/lang/String;
    .end local v5    # "item":Ljava/lang/String;
    .end local v7    # "oldUid":Ljava/lang/String;
    .end local v9    # "toknizer":Ljava/util/StringTokenizer;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaving onPreAdminRemoval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public pushSSODataInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .param p3, "dataBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "pushSSODataInUserSpace called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v7, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    const/4 v1, 0x0

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v1

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v4, "com.centrify.sso.samsung"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_2

    invoke-interface {v2, p3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->pushSSOData(Landroid/os/Bundle;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerReciever()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public setCustomerInfoInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .param p3, "companyName"    # Ljava/lang/String;
    .param p4, "logoFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "setCustomerInfo called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v7, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    const/4 v1, 0x0

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v1

    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v4, "com.centrify.sso.samsung"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    :try_start_0
    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "forceReauthenticate called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_2

    invoke-interface {v2, p3, p4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSSOWhiteListInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setSSOWhiteListInUserSpace called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallerUID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v5, 0x0

    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/16 v9, 0xa

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    :cond_1
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setSSOWhiteList: wrong parameter !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v5

    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pName":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setSSOWhiteList: packageName list is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "addPackageList":[Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v6

    .local v6, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v6, :cond_2

    const/4 v8, 0x1

    invoke-interface {v6, v0, v8}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setupSSOInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setupSSOInUserSpace called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "solutionPackageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v5, 0x0

    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v8, 0xa

    invoke-virtual {v5, v12, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .local v7, "userId":I
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v8, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->isExistingOrFirstClient(II)Z

    move-result v0

    .local v0, "bFirstOrExistingClient":Z
    if-ne v0, v12, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    const/4 v5, 0x0

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v5

    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5, v12, v12}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "bIsContainKey":Z
    if-eqz v1, :cond_5

    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    .local v4, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v8

    if-ne v8, v7, :cond_5

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v5, v11, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .end local v4    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    :cond_5
    :try_start_0
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v8, v7, p2}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    move-result v6

    .local v6, "result":Z
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_6

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupSSO() userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /  result of sso binding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v6, :cond_2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "clientHandle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " setupSSO: adding cilentHandle :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V

    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "clientHandle":Ljava/lang/String;
    .end local v6    # "result":Z
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "Failed at EnterpriseSSOPolicy API setupSSO-Exception"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "clientHandle":Ljava/lang/String;
    .restart local v6    # "result":Z
    :cond_7
    :try_start_1
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " setupSSO: already present cilentHandle :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "inside systemReady laoding list from file."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->loadListFromFile()V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "items":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "clientId":I
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {p0, v0, v6, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    .end local v0    # "clientId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, " Exception occurred while trying to read from file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public unenrollInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unenrollInUserSpace called for pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/16 v5, 0xa

    invoke-virtual {v2, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    const/4 v2, 0x0

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-object v2

    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_3
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_2

    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "calling unenroll on ssointerface.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->unenroll()I

    move-result v1

    .local v1, "res":I
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling unenroll on ssointerface.. res= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "res":I
    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
