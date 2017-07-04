.class public Lcom/sec/sdp/internal/SdpAuthenticator;
.super Ljava/lang/Object;
.source "SdpAuthenticator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpAuthenticator"

.field private static _instance:Lcom/sec/sdp/internal/SdpAuthenticator;


# instance fields
.field private mSdpService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/sec/sdp/internal/SdpAuthenticator;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/sec/sdp/internal/SdpAuthenticator;

    invoke-direct {v0}, Lcom/sec/sdp/internal/SdpAuthenticator;-><init>()V

    sput-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    .line 38
    :cond_0
    sget-object v0, Lcom/sec/sdp/internal/SdpAuthenticator;->_instance:Lcom/sec/sdp/internal/SdpAuthenticator;

    return-object v0
.end method


# virtual methods
.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 45
    const/16 v1, -0xf

    .line 46
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    const-string v2, "SdpAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sparse-switch v1, :sswitch_data_0

    .line 71
    :cond_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SdpAuthenticator"

    const-string v3, "Failed to call enroll"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 62
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 64
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;-><init>()V

    throw v2

    .line 66
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 68
    :sswitch_4
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_4
        -0x7 -> :sswitch_1
        -0x5 -> :sswitch_2
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_3
    .end sparse-switch
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v1, -0xf

    .line 78
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/sec/sdp/internal/SdpAuthenticator;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 86
    const-string v2, "SdpAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verify failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sparse-switch v1, :sswitch_data_0

    .line 104
    :cond_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpAuthenticator"

    const-string v3, "Failed to call verify"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 97
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 99
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 101
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method
