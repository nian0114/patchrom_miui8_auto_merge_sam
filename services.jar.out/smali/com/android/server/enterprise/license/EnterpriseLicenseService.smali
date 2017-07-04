.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DEACTIVATE_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field private static final MY_PID:I

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private allowedCaller:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.kccagent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.klat.agent"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 102
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 103
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 139
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    :cond_0
    const-string v7, "EnterpriseLicenseService"

    const-string v8, "caller is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    return v6

    .line 142
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "checkCallerPkgName":Z
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 147
    .local v1, "caller":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    const-string v8, "EnterpriseLicenseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caller is approved : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x1

    .line 154
    .end local v1    # "caller":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_5

    .line 155
    const-string v6, "EnterpriseLicenseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caller is not approved (caller:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 156
    goto :goto_0

    .line 146
    .restart local v1    # "caller":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "caller":Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v8, v9, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const-string v6, "EnterpriseLicenseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "signature mismatched! caller : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 164
    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 170
    goto/16 :goto_0
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1543
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v3

    .line 1546
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 1549
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1529
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1226
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 1227
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1230
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1231
    :cond_1
    const/4 v4, 0x0

    .line 1250
    :cond_2
    :goto_0
    return-object v4

    .line 1233
    :cond_3
    const/4 v5, 0x0

    .line 1234
    .local v5, "ro":Landroid/app/enterprise/license/RightsObject;
    const/4 v4, 0x0

    .line 1236
    .local v4, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string/jumbo v8, "pkgName"

    const-string/jumbo v9, "rightsObject"

    invoke-virtual {v6, v7, v8, p0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1240
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    .line 1241
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v5, v0

    .line 1242
    if-eqz v5, :cond_2

    .line 1243
    invoke-virtual {v5}, Landroid/app/enterprise/license/RightsObject;->getPermissions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1246
    .end local v1    # "blob":[B
    :catch_0
    move-exception v3

    .line 1247
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1534
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1535
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1536
    .local v0, "blob":[B
    const-string/jumbo v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1537
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1538
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .locals 9

    .prologue
    .line 1479
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-eq v6, v7, :cond_0

    .line 1480
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1484
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 1485
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "pkgName"

    aput-object v7, v0, v6

    .line 1487
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1490
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1491
    const/4 v1, 0x0

    .line 1492
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 1493
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1495
    .local v3, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1496
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1497
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1499
    if-eqz v4, :cond_1

    .line 1500
    const-string v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1506
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1507
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1510
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 910
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 912
    new-instance v21, Ljava/lang/SecurityException;

    const-string v22, "Operation not supported on profile"

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 917
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 918
    .local v17, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 920
    .local v20, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 922
    .local v6, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    .line 925
    .local v18, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 926
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 927
    move-object/from16 v6, p3

    .line 984
    :cond_2
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_c

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 986
    const-string v21, "EnterpriseLicenseService"

    const-string v22, "KLM activation is already in process."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1013
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1054
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 930
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 931
    .local v14, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 934
    .local v4, "approved":Z
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 935
    const/4 v4, 0x1

    .line 936
    move-object/from16 v6, p3

    .line 940
    :cond_5
    if-nez v4, :cond_6

    .line 941
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v13, v5, v9

    .line 942
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 943
    const/4 v4, 0x1

    .line 949
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 951
    :try_start_5
    const-string/jumbo v21, "package"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 952
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 954
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_8

    .line 956
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 960
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1013
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 941
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 966
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 967
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 970
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_9

    aget-object v13, v5, v9

    .line 971
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 975
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 970
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1013
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 990
    .end local v4    # "approved":Z
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "pkgs":[Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.registration.internal"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.pkgname"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.request_pkgname"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string/jumbo v21, "persona"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v16

    .line 999
    .local v16, "pms":Landroid/os/IPersonaManager;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1000
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1004
    .local v7, "dest":Landroid/os/UserHandle;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1013
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1002
    .end local v7    # "dest":Landroid/os/UserHandle;
    :cond_b
    :try_start_b
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v7    # "dest":Landroid/os/UserHandle;
    goto :goto_3

    .line 1007
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pms":Landroid/os/IPersonaManager;
    :cond_c
    const-string v21, "EnterpriseLicenseService"

    const-string/jumbo v22, "package name is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1013
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    :goto_4
    if-nez p3, :cond_d

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1019
    .restart local v14    # "pkgs":[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v0, v14

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 1020
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v12, :cond_3

    aget-object v13, v5, v9

    .line 1021
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1031
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1020
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1009
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1010
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v21, "EnterpriseLicenseService"

    const-string v22, "activateKnoxLicense() failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1013
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1035
    :cond_d
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1042
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 1043
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1046
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1052
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1062
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    monitor-exit p0

    return-void

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVer"    # Ljava/lang/String;

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 740
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Operation not supported on profile"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 744
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 745
    .local v20, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    .line 747
    .local v21, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 749
    .local v6, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    .line 751
    .local v18, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 752
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 753
    move-object/from16 v6, p3

    .line 810
    :cond_2
    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_e

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 812
    const-string v22, "EnterpriseLicenseService"

    const-string v23, "ELM activation is already in process."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 851
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 891
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 756
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 757
    .local v15, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 760
    .local v4, "approved":Z
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 761
    const/4 v4, 0x1

    .line 762
    move-object/from16 v6, p3

    .line 766
    :cond_5
    if-nez v4, :cond_6

    .line 767
    move-object v5, v15

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v13, v5, v9

    .line 768
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 769
    const/4 v4, 0x1

    .line 775
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 777
    :try_start_5
    const-string/jumbo v22, "package"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 778
    .local v16, "pm":Landroid/content/pm/IPackageManager;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 780
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_8

    .line 782
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0xcc

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 851
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 767
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 792
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 793
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 796
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v15

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_9

    aget-object v13, v5, v9

    .line 797
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0xcc

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 796
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 851
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 816
    .end local v4    # "approved":Z
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "pkgs":[Ljava/lang/String;
    :cond_a
    const/4 v14, 0x0

    .line 817
    .local v14, "pkgVersion":Ljava/lang/String;
    if-eqz p4, :cond_c

    .line 818
    move-object/from16 v14, p4

    .line 827
    :cond_b
    :goto_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.registration.internal"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string/jumbo v22, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string/jumbo v22, "edm.intent.extra.license.data.request_pkgname"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string/jumbo v22, "persona"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v17

    .line 837
    .local v17, "pms":Landroid/os/IPersonaManager;
    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 838
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 842
    .local v7, "dest":Landroid/os/UserHandle;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 851
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 821
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v17    # "pms":Landroid/os/IPersonaManager;
    :cond_c
    :try_start_b
    const-string/jumbo v22, "package"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 822
    .restart local v16    # "pm":Landroid/content/pm/IPackageManager;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 823
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_b

    .line 824
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_3

    .line 840
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v17    # "pms":Landroid/os/IPersonaManager;
    :cond_d
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v7    # "dest":Landroid/os/UserHandle;
    goto :goto_4

    .line 845
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "pkgVersion":Ljava/lang/String;
    .end local v17    # "pms":Landroid/os/IPersonaManager;
    :cond_e
    const-string v22, "EnterpriseLicenseService"

    const-string/jumbo v23, "package name is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 851
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    :goto_5
    if-nez p3, :cond_f

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 857
    .restart local v15    # "pkgs":[Ljava/lang/String;
    if-eqz v15, :cond_3

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 858
    move-object v5, v15

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_6
    if-ge v9, v12, :cond_3

    aget-object v13, v5, v9

    .line 859
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 860
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0x12d

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 868
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 858
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 847
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v15    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 848
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v22, "EnterpriseLicenseService"

    const-string v23, "activateLicense() failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 851
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .line 872
    :cond_f
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0x12d

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 880
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 883
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    :cond_10
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 889
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized activateLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVersion"    # Ljava/lang/String;

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    monitor-exit p0

    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deActivateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1073
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1075
    new-instance v21, Ljava/lang/SecurityException;

    const-string v22, "Operation not supported on profile"

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 1080
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1083
    .local v17, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 1085
    .local v20, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 1087
    .local v6, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    .line 1090
    .local v18, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1091
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 1092
    move-object/from16 v6, p3

    .line 1147
    :cond_2
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_c

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1149
    const-string v21, "EnterpriseLicenseService"

    const-string v22, "KLM de-activation is already in process."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1176
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1217
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 1094
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1095
    .local v14, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1098
    .local v4, "approved":Z
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1099
    const/4 v4, 0x1

    .line 1100
    move-object/from16 v6, p3

    .line 1104
    :cond_5
    if-nez v4, :cond_6

    .line 1105
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v13, v5, v9

    .line 1106
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1107
    const/4 v4, 0x1

    .line 1113
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 1115
    :try_start_5
    const-string/jumbo v21, "package"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 1116
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 1117
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_8

    .line 1119
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1123
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1125
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1176
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1105
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1129
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1130
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1133
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_9

    aget-object v13, v5, v9

    .line 1134
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1140
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1133
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1176
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1153
    .end local v4    # "approved":Z
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "pkgs":[Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.deactivation.internal"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.pkgname"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.request_pkgname"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string/jumbo v21, "persona"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v16

    .line 1162
    .local v16, "pms":Landroid/os/IPersonaManager;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1163
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1167
    .local v7, "dest":Landroid/os/UserHandle;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1176
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1165
    .end local v7    # "dest":Landroid/os/UserHandle;
    :cond_b
    :try_start_b
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v7    # "dest":Landroid/os/UserHandle;
    goto :goto_3

    .line 1170
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pms":Landroid/os/IPersonaManager;
    :cond_c
    const-string v21, "EnterpriseLicenseService"

    const-string/jumbo v22, "package name is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1176
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1180
    :goto_4
    if-nez p3, :cond_d

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1182
    .restart local v14    # "pkgs":[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v0, v14

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 1183
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v12, :cond_3

    aget-object v13, v5, v9

    .line 1184
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1194
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1183
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1172
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1173
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v21, "EnterpriseLicenseService"

    const-string/jumbo v22, "deActivateKnoxLicense() failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1176
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1198
    :cond_d
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1202
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 1206
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1209
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1212
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1215
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;

    .prologue
    const/4 v5, 0x0

    .line 570
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 572
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v5

    .line 577
    :cond_1
    const/4 v3, 0x0

    .line 579
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "instanceId"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v0, "pkgName"

    .line 583
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 586
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 587
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "deleteApiCallData(): result is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "deleteApiCallData() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    if-nez v3, :cond_3

    .line 594
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "deleteApiCallData(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_3
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1345
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1346
    const/4 v5, 0x0

    .line 1347
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1349
    .local v6, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 1381
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1383
    :goto_0
    return v8

    .line 1352
    :cond_1
    const/4 v3, 0x0

    .line 1354
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1355
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "instanceId"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string/jumbo v0, "pkgName"

    .line 1358
    .local v0, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1360
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1361
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "deleteLicense(): result is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1381
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1365
    :cond_2
    :try_start_2
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1367
    if-nez v3, :cond_3

    .line 1368
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1381
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1372
    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1373
    if-eqz v5, :cond_4

    .line 1375
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1381
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :goto_1
    move v8, v5

    .line 1383
    goto :goto_0

    .line 1377
    :catch_0
    move-exception v2

    .line 1378
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "deleteLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1381
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1392
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1393
    const/4 v1, 0x0

    .line 1394
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1396
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1397
    :cond_0
    const/4 v4, 0x0

    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    :goto_0
    return v4

    .line 1399
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1400
    if-eqz v1, :cond_2

    .line 1402
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v4, v1

    .line 1409
    goto :goto_0

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .locals 15

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 693
    const/4 v7, 0x0

    .line 694
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    const/4 v5, 0x0

    .line 697
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    const/4 v12, 0x3

    :try_start_0
    new-array v0, v12, [Ljava/lang/String;

    .line 698
    .local v0, "columns":[Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "pkgName"

    aput-object v13, v0, v12

    .line 699
    const/4 v12, 0x1

    const-string/jumbo v13, "instanceId"

    aput-object v13, v0, v12

    .line 700
    const/4 v12, 0x2

    const-string/jumbo v13, "pkgVersion"

    aput-object v13, v0, v12

    .line 702
    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 705
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 706
    const/4 v1, 0x0

    .line 707
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 708
    .local v9, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 709
    .local v3, "instanceId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 710
    .local v10, "packageVersion":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 713
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 714
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 715
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 716
    const-string/jumbo v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    const-string/jumbo v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 718
    new-instance v5, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 719
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :try_start_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v5

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_0

    .line 721
    :cond_0
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 722
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/app/enterprise/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .line 728
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageVersion":Ljava/lang/String;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :goto_1
    return-object v12

    .line 724
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v12, "EnterpriseLicenseService"

    const-string/jumbo v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v12, 0x0

    goto :goto_1

    .line 724
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "instanceId":Ljava/lang/String;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageVersion":Ljava/lang/String;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_2

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_2

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :cond_2
    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_3
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 522
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 524
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-object v5

    .line 529
    :cond_1
    const/4 v3, 0x0

    .line 530
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "instanceId"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v0, "pkgName"

    .line 534
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 536
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 537
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getApiCallData() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 543
    if-nez v3, :cond_3

    .line 544
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_3
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method

.method public getApiCallDataByAdmin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not supported on profile"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    :cond_1
    :goto_0
    return-object v1

    .line 630
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1421
    :cond_0
    const/4 v2, 0x0

    .line 1431
    :goto_0
    return-object v2

    .line 1423
    :cond_1
    const/4 v2, 0x0

    .line 1425
    .local v2, "elmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1426
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1427
    :catch_0
    move-exception v1

    .line 1428
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getELMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1258
    :goto_0
    return-object v1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getELMPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1443
    :cond_0
    const/4 v2, 0x0

    .line 1453
    :goto_0
    return-object v2

    .line 1445
    :cond_1
    const/4 v2, 0x0

    .line 1447
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1448
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1449
    :catch_0
    move-exception v1

    .line 1450
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1465
    :cond_0
    const/4 v2, 0x0

    .line 1475
    :goto_0
    return-object v2

    .line 1467
    :cond_1
    const/4 v2, 0x0

    .line 1469
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1470
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1471
    :catch_0
    move-exception v1

    .line 1472
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .locals 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 646
    const/4 v5, 0x0

    .line 648
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v6, v5

    .line 683
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_0
    return-object v6

    .line 652
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_1
    const/4 v10, 0x3

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    .line 653
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "pkgName"

    aput-object v11, v0, v10

    .line 654
    const/4 v10, 0x1

    const-string/jumbo v11, "instanceId"

    aput-object v11, v0, v10

    .line 655
    const/4 v10, 0x2

    const-string/jumbo v11, "pkgVersion"

    aput-object v11, v0, v10

    .line 657
    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 660
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 663
    .local v3, "instId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 664
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 665
    .local v8, "packageVersion":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 667
    .local v4, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 668
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 669
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "instanceId"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 671
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 672
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 673
    const-string/jumbo v10, "pkgVersion"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 674
    new-instance v6, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v6, v7, v3, v8}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v5, v6

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageVersion":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_3
    :goto_1
    move-object v6, v5

    .line 683
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_0

    .line 679
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :catch_0
    move-exception v2

    .line 680
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseLicenseService"

    const-string/jumbo v11, "getLicenseInfo() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .locals 9
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 389
    const/4 v3, 0x0

    .line 390
    .local v3, "ro":Landroid/app/enterprise/license/RightsObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 404
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .local v4, "ro":Landroid/app/enterprise/license/RightsObject;
    :goto_0
    return-object v4

    .line 394
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :cond_1
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string/jumbo v7, "instanceId"

    const-string/jumbo v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 398
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    .line 399
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "blob":[B
    :cond_2
    :goto_1
    move-object v4, v3

    .line 404
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    goto :goto_0

    .line 400
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :catch_0
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apiName"    # Ljava/lang/String;

    .prologue
    .line 1263
    invoke-static {p1, p2}, Lcom/android/server/enterprise/license/LicenseLog;->log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 1264
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1518
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1522
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1526
    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;IILjava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;
    .param p4, "initiator"    # I
    .param p5, "result_type"    # I
    .param p6, "callerPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 333
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 335
    invoke-direct {p0, p1, p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 376
    :goto_0
    return v3

    .line 338
    :cond_0
    const/4 v0, 0x0

    .line 339
    .local v0, "differentCaller":Z
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 340
    :cond_1
    const/4 v0, 0x0

    .line 346
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 349
    .local v4, "token":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "edm.intent.extra.knox_license.status"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v7, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string/jumbo v7, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v2, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string/jumbo v7, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v2, v7, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    if-ne v0, v6, :cond_2

    .line 356
    invoke-virtual {v2, p6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v7, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 360
    :cond_2
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v7, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 364
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 365
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v7

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v8

    invoke-interface {v7, p1, p2, v8}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    .line 376
    goto :goto_0

    .line 341
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_4
    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 342
    const/4 v0, 0x0

    goto :goto_1

    .line 344
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 369
    .restart local v4    # "token":J
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "processKnoxLicenseResponse() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p6, "error"    # Landroid/app/enterprise/license/Error;
    .param p7, "permGroup"    # Ljava/lang/String;
    .param p8, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_0

    .line 195
    const/4 v14, 0x0

    .line 314
    :goto_0
    monitor-exit p0

    return v14

    .line 197
    :cond_0
    const/4 v9, 0x0

    .line 198
    .local v9, "differentCaller":Z
    if-eqz p8, :cond_1

    :try_start_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 199
    :cond_1
    const/4 v9, 0x0

    .line 205
    :goto_1
    const/4 v14, 0x0

    .line 206
    .local v14, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 209
    .local v16, "token":J
    if-nez p5, :cond_8

    .line 210
    const/4 v14, 0x1

    .line 265
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_7

    .line 267
    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 271
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 272
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v11, "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 274
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v12, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :goto_2
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x320

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const/4 v15, 0x1

    if-ne v9, v15, :cond_4

    .line 291
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 295
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 192
    .end local v9    # "differentCaller":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ret":Z
    .end local v16    # "token":J
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 200
    .restart local v9    # "differentCaller":Z
    :cond_5
    :try_start_2
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 201
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 203
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 284
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "ret":Z
    .restart local v16    # "token":J
    :cond_7
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 215
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_8
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 220
    .local v5, "blob":[B
    const-string/jumbo v15, "rightsObject"

    invoke-virtual {v7, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 221
    const-string/jumbo v15, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v15, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 225
    .local v6, "cnt":I
    if-lez v6, :cond_10

    .line 227
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v14

    .line 239
    :cond_9
    :goto_3
    const-string v15, "EnterpriseLicenseService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "processLicenseActivationResponse(): ret = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz v14, :cond_a

    .line 243
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 251
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 252
    if-eqz v14, :cond_11

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-interface {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    :cond_b
    :goto_4
    :try_start_4
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_15

    .line 267
    const/4 v15, 0x1

    if-ne v9, v15, :cond_d

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 271
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_c

    .line 272
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 273
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 274
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v12, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_c
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :goto_5
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x320

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const/4 v15, 0x1

    if-ne v9, v15, :cond_e

    .line 291
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 295
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v16

    .line 303
    :try_start_5
    const-string v15, "application_policy"

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 305
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_f

    .line 306
    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 311
    :cond_f
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 230
    .end local v4    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_10
    :try_start_7
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    .line 232
    if-nez v14, :cond_9

    .line 234
    const-string v15, "EnterpriseLicenseService"

    const-string v18, "check key field"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string/jumbo v15, "licenseKey"

    const-string/jumbo v18, "na"

    move-object/from16 v0, v18

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    goto/16 :goto_3

    .line 255
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    const-string/jumbo v18, "fail"

    const/16 v19, 0x12d

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 260
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 261
    .local v10, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v15, "EnterpriseLicenseService"

    const-string/jumbo v18, "processLicenseActivationResponse() failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 265
    :try_start_9
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_16

    .line 267
    const/4 v15, 0x1

    if-ne v9, v15, :cond_13

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 271
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_12

    .line 272
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 273
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 274
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v12, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_12
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :goto_7
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x320

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const/4 v15, 0x1

    if-ne v9, v15, :cond_14

    .line 291
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 295
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .line 284
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_15
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 284
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_16
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 265
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v15

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_1a

    .line 267
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_18

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 271
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_17

    .line 272
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 273
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 274
    const-string/jumbo v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_17
    const-string/jumbo v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v18, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    const-string/jumbo v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :goto_8
    const-string/jumbo v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x320

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_19

    .line 291
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 295
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw v15

    .line 284
    :cond_1a
    const-string/jumbo v18, "edm.intent.extra.license.status"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 308
    :catch_1
    move-exception v10

    .line 309
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_a
    const-string v15, "EnterpriseLicenseService"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 311
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p4, "error"    # Landroid/app/enterprise/license/Error;
    .param p5, "permGroup"    # Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "pkgVer"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 423
    const/4 v13, 0x0

    .line 424
    .local v13, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 427
    .local v16, "token":J
    if-nez p3, :cond_4

    .line 428
    const/4 v13, 0x1

    .line 469
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v13, :cond_2

    .line 471
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p5

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :goto_0
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x321

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 485
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v4, "UMCintent":Landroid/content/Intent;
    if-eqz v13, :cond_3

    .line 487
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p5

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :goto_1
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p6

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 497
    .local v12, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    .line 498
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v10, "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v10, v15, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 500
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v4, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x321

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v15, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v14, v13

    .line 510
    .end local v13    # "ret":Z
    .local v14, "ret":I
    :goto_2
    return v14

    .line 475
    .end local v14    # "ret":I
    .restart local v13    # "ret":Z
    :cond_2
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 491
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 433
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p6

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 439
    .local v5, "blob":[B
    const-string/jumbo v15, "rightsObject"

    invoke-virtual {v7, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 440
    const-string/jumbo v15, "pkgVersion"

    move-object/from16 v0, p7

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 443
    .local v6, "cnt":I
    if-lez v6, :cond_5

    .line 445
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    .line 448
    :cond_5
    const-string v15, "EnterpriseLicenseService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "processLicenseValidationResult(): ret = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v13, :cond_6

    .line 451
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p6

    invoke-interface {v15, v0}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 455
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 456
    if-eqz v13, :cond_a

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-interface {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_7
    :goto_3
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz v13, :cond_d

    .line 471
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p5

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :goto_4
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x321

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 485
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v13, :cond_e

    .line 487
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p5

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :goto_5
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p6

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 497
    .restart local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_8

    .line 498
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 499
    .restart local v10    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v10, v15, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 500
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v4, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_8
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x321

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v15, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    :goto_6
    move v14, v13

    .line 510
    .restart local v14    # "ret":I
    goto/16 :goto_2

    .line 459
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "ret":I
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    const-string/jumbo v18, "fail"

    const/16 v19, 0x12d

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 464
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 465
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v15, "EnterpriseLicenseService"

    const-string/jumbo v18, "processLicenseValidationResult() failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz v13, :cond_f

    .line 471
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p5

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :goto_7
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x321

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 485
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v13, :cond_10

    .line 487
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p5

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :goto_8
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p6

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 497
    .restart local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_b

    .line 498
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 499
    .restart local v10    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v10, v15, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 500
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v4, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_b
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x321

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v15, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .line 475
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_d
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .line 491
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_e
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 475
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v9    # "e":Ljava/lang/Exception;
    :cond_f
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_7

    .line 491
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_10
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_8

    .line 469
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v15

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz v13, :cond_13

    .line 471
    const-string/jumbo v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string/jumbo v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :goto_9
    const-string/jumbo v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 485
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v13, :cond_14

    .line 487
    const-string/jumbo v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string/jumbo v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :goto_a
    const-string/jumbo v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 497
    .restart local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_11

    .line 498
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 499
    .restart local v10    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 500
    const-string/jumbo v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    .end local v10    # "extra":Landroid/os/Bundle;
    :cond_11
    const-string/jumbo v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x321

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v18, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 507
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    throw v15

    .line 475
    :cond_13
    const-string/jumbo v18, "edm.intent.extra.license.status"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9

    .line 491
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_14
    const-string/jumbo v18, "edm.intent.extra.license.status"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1272
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1273
    const/4 v5, 0x0

    .line 1274
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1276
    .local v6, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 1308
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1310
    :goto_0
    return v8

    .line 1279
    :cond_1
    const/4 v3, 0x0

    .line 1281
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1282
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "instanceId"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string/jumbo v0, "pkgName"

    .line 1285
    .local v0, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1287
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1288
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "resetLicense(): result is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1292
    :cond_2
    :try_start_2
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1294
    if-nez v3, :cond_3

    .line 1295
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1308
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1299
    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1300
    if-eqz v5, :cond_4

    .line 1302
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1308
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :goto_1
    move v8, v5

    .line 1310
    goto :goto_0

    .line 1304
    :catch_0
    move-exception v2

    .line 1305
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1308
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1320
    const/4 v1, 0x0

    .line 1321
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1323
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1324
    :cond_0
    const/4 v4, 0x0

    .line 1334
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1336
    :goto_0
    return v4

    .line 1326
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1327
    if-eqz v1, :cond_2

    .line 1329
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1334
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v4, v1

    .line 1336
    goto :goto_0

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1334
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1513
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 1514
    return-void
.end method
