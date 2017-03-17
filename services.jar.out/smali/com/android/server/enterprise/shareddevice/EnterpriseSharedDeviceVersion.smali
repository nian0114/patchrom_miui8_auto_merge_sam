.class public Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;
.super Ljava/lang/Object;
.source "EnterpriseSharedDeviceVersion.java"


# static fields
.field private static final KNOX_SHARED_DEVICE_INITIAL_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final KNOX_SHARED_DEVICE_SECURITY_USABILITY_ENHANCEMENT:Ljava/lang/String; = "2.6.0"

.field private static final KNOX_SHARED_DEVICE_VERSION_NOT_AVAILABLE:Ljava/lang/String; = "N/A"

.field private static final KNOX_SHARED_DEVICE_VERSION_SENDING_USERID:Ljava/lang/String; = "1.0.1"

.field private static final PROP_KNOX_SHARED_DEVICE_VERSION:Ljava/lang/String; = "net.knox.shareddevice.version"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-string v2, "N/A"

    .line 22
    .local v2, "version":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 40
    .end local v2    # "version":Ljava/lang/String;
    .local v3, "version":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 26
    .end local v3    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 27
    .local v1, "pm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v4

    sget-object v5, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v5}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 28
    const-string v2, "1.0.0"

    .end local v1    # "pm":Landroid/os/PersonaManager;
    :goto_1
    move-object v3, v2

    .line 40
    .end local v2    # "version":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    goto :goto_0

    .line 29
    .end local v3    # "version":Ljava/lang/String;
    .restart local v1    # "pm":Landroid/os/PersonaManager;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v4

    sget-object v5, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v5}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 30
    const-string v2, "1.0.1"

    goto :goto_1

    .line 32
    :cond_2
    const-string v2, "2.6.0"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 33
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 35
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 37
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static writeVersionInProperties(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 46
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v1

    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 47
    sget-object v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeVersionInProperties : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string/jumbo v1, "net.knox.shareddevice.version"

    invoke-static {p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
