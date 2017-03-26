.class public Lcom/publicnfc/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# static fields
.field public static final STATE_CARD_MODE_ON:I = 0x5

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Adapter"

.field private static mService:Lcom/publicnfc/IAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/publicnfc/Adapter;->getServiceInterface()Lcom/publicnfc/IAdapter;

    move-result-object v0

    sput-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    .line 23
    sget-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "Adapter"

    const-string v1, "Could not retrieve service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Could not retrieve service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    return-void
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 81
    const-string v1, "Adapter"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-static {}, Lcom/publicnfc/Adapter;->getServiceInterface()Lcom/publicnfc/IAdapter;

    move-result-object v0

    .line 83
    .local v0, "service":Lcom/publicnfc/IAdapter;
    if-nez v0, :cond_0

    .line 84
    const-string v1, "Adapter"

    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    sput-object v0, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/publicnfc/IAdapter;
    .locals 2

    .prologue
    .line 75
    const-string v1, "handset"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/publicnfc/IAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/publicnfc/IAdapter;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public disable()Z
    .locals 2

    .prologue
    .line 67
    :try_start_0
    sget-object v1, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v1}, Lcom/publicnfc/IAdapter;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v1}, Lcom/publicnfc/IAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcState()I
    .locals 2

    .prologue
    .line 31
    :try_start_0
    sget-object v1, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v1}, Lcom/publicnfc/IAdapter;->getNfcState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    :goto_0
    return v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 34
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readerDisable()Z
    .locals 2

    .prologue
    .line 49
    :try_start_0
    sget-object v1, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v1}, Lcom/publicnfc/IAdapter;->readerDisable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readerEnable()Z
    .locals 2

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/publicnfc/Adapter;->mService:Lcom/publicnfc/IAdapter;

    invoke-interface {v1}, Lcom/publicnfc/IAdapter;->readerEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/publicnfc/Adapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 43
    const/4 v1, 0x0

    goto :goto_0
.end method
