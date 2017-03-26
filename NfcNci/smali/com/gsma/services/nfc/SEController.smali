.class public Lcom/gsma/services/nfc/SEController;
.super Ljava/lang/Object;
.source "SEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/SEController$Callbacks;
    }
.end annotation


# static fields
.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final SUCCESS:I

.field private static TAG:Ljava/lang/String;

.field private static mIsHceCapable:Z

.field private static mSEControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/gsma/services/nfc/SEController;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/gsma/services/nfc/INfcController;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "SEController"

    sput-object v0, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/SEController;->mSEControllers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private constructor <init>(ZLcom/gsma/services/nfc/INfcController;)V
    .locals 1
    .param p1, "isHceCapable"    # Z
    .param p2, "service"    # Lcom/gsma/services/nfc/INfcController;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    .line 36
    sput-object v0, Lcom/gsma/services/nfc/SEController;->mSEControllers:Ljava/util/HashMap;

    .line 37
    sput-boolean p1, Lcom/gsma/services/nfc/SEController;->mIsHceCapable:Z

    .line 38
    sput-object p2, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 39
    return-void
.end method

.method private attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 104
    sget-object v1, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    .line 106
    .local v0, "service":Lcom/gsma/services/nfc/INfcController;
    if-nez v0, :cond_0

    .line 107
    sget-object v1, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    sput-object v0, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/SEController$Callbacks;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/gsma/services/nfc/SEController$Callbacks;

    .prologue
    .line 43
    const-class v2, Lcom/gsma/services/nfc/SEController;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 44
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 45
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    if-nez p0, :cond_1

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/gsma/services/nfc/SEController;->mIsHceCapable:Z

    .line 51
    sget-boolean v1, Lcom/gsma/services/nfc/SEController;->mIsHceCapable:Z

    if-eqz v1, :cond_2

    .line 52
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_2
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    sput-object v1, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 55
    sget-object v1, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    if-nez v1, :cond_3

    .line 56
    sget-object v1, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    const-string v3, "Could not retrieve SEController service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Could not retrieve SEController service"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_3
    sget-object v1, Lcom/gsma/services/nfc/SEController;->mSEControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/nfc/SEController;

    .line 61
    .local v0, "controller":Lcom/gsma/services/nfc/SEController;
    if-nez v0, :cond_4

    .line 62
    new-instance v0, Lcom/gsma/services/nfc/SEController;

    .end local v0    # "controller":Lcom/gsma/services/nfc/SEController;
    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/SEController;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v0    # "controller":Lcom/gsma/services/nfc/SEController;
    sget-object v1, Lcom/gsma/services/nfc/SEController;->mSEControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_4
    invoke-interface {p1, v0}, Lcom/gsma/services/nfc/SEController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/SEController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit v2

    return-void
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/INfcController;
    .locals 2

    .prologue
    .line 97
    const-string v1, "nfccontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/INfcController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getActiveSecureElement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v1}, Lcom/gsma/services/nfc/INfcController;->getActiveSecureElement()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/SEController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 73
    const-string v1, ""

    goto :goto_0
.end method

.method public setActiveSecureElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/SEController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p1}, Lcom/gsma/services/nfc/INfcController;->setActiveSecureElement(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 94
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 83
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/SEController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 85
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "API not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 87
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NFC controller is not enabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_4
    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid secure element name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method
