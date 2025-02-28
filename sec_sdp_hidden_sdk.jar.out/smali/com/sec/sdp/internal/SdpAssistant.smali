.class public Lcom/sec/sdp/internal/SdpAssistant;
.super Ljava/lang/Object;
.source "SdpAssistant.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpAssistant"

.field private static _instance:Lcom/sec/sdp/internal/SdpAssistant;


# instance fields
.field private mSdpService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/sec/sdp/internal/SdpAssistant;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/sec/sdp/internal/SdpAssistant;

    invoke-direct {v0}, Lcom/sec/sdp/internal/SdpAssistant;-><init>()V

    sput-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    .line 39
    :cond_0
    sget-object v0, Lcom/sec/sdp/internal/SdpAssistant;->_instance:Lcom/sec/sdp/internal/SdpAssistant;

    return-object v0
.end method


# virtual methods
.method public deleteToeknFromTrusted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "nameTag"    # Ljava/lang/String;

    .prologue
    .line 65
    const/16 v1, -0xf

    .line 66
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->deleteToeknFromTrusted(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    const-string v2, "SdpAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteToeknFromTrusted failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    .line 83
    :goto_1
    return v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SdpAssistant"

    const-string v3, "Failed to call save token to the trusted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;

    .prologue
    .line 43
    const/16 v1, -0xf

    .line 44
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    const-string v2, "SdpAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveTokenIntoTrusted failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v2, 0x0

    .line 61
    :goto_1
    return v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SdpAssistant"

    const-string v3, "Failed to call save token to the trusted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "engineAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;
        }
    .end annotation

    .prologue
    .line 88
    const/16 v1, -0xf

    .line 89
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAssistant;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 97
    const-string v2, "SdpAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlockViaTrusted failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch v1, :pswitch_data_0

    .line 110
    :pswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SdpAssistant"

    const-string v3, "Failed to call save token to the trusted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;-><init>()V

    throw v2

    .line 102
    :pswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;-><init>()V

    throw v2

    .line 104
    :pswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 113
    :cond_1
    return-void

    .line 98
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
