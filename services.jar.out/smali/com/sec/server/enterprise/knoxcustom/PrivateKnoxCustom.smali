.class public Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field static final KNOX_CUSTOM_TRUE:I = 0x8

.field static final PARAM_BUF_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field static mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceSystemPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    invoke-direct {v0, p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    :cond_0
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readBooleanDataValue(I)Z
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/16 v9, 0x1e

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v4

    .local v4, "value":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_0

    move v1, v0

    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const/16 v5, 0x1f

    aget-byte v5, v4, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    if-ne p1, v7, :cond_1

    aget-byte v5, v4, v7

    if-ne v5, v7, :cond_1

    aget-byte v5, v4, v9

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-ne p1, v8, :cond_2

    aget-byte v5, v4, v8

    if-ne v5, v7, :cond_2

    aget-byte v5, v4, v9

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method private native readParamData()[B
.end method

.method private writeBooleanDataValue(IZ)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "set_true"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/16 v9, 0x9

    const/16 v8, 0x1e

    const/16 v7, 0x8

    const/4 v2, 0x0

    .local v2, "ret":Z
    const/16 v6, 0x20

    new-array v3, v6, [B

    .local v3, "value":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .local v1, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v0

    .local v0, "previousValue":[B
    const/16 v6, 0x1f

    aget-byte v6, v0, v6

    if-ne v6, v11, :cond_2

    aget-byte v6, v0, v7

    aput-byte v6, v3, v7

    aget-byte v6, v0, v9

    aput-byte v6, v3, v9

    aget-byte v6, v0, v8

    aput-byte v6, v3, v8

    :goto_0
    if-eqz p2, :cond_3

    aput-byte v7, v3, p1

    :goto_1
    const/16 v6, 0x1f

    aput-byte v11, v3, v6

    if-ne p1, v7, :cond_0

    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    :cond_0
    if-ne p1, v9, :cond_1

    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->writeParamData([B)Z

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    const/16 v6, 0x17

    aput-byte v6, v3, v7

    aput-byte v10, v3, v9

    aput-byte v10, v3, v8

    goto :goto_0

    :cond_3
    const/4 v6, 0x7

    aput-byte v6, v3, p1

    goto :goto_1
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public isKnoxCustomAutoStartUpEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    move-result v0

    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .local v2, "ret":Z
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z

    move-result v1

    .local v1, "currentState":Z
    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v4, v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    goto :goto_0
.end method
