.class public Lcom/gsma/services/nfc/NfcController;
.super Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/NfcController$Callbacks;
    }
.end annotation


# static fields
.field public static final ACTION_TRANSACTION_EVENT:Ljava/lang/String; = "com.gsma.services.nfc.action.TRANSACTION_EVENT"

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final NFC_CONTROLLER_PERMISSION:Ljava/lang/String; = "android.permission.NFC"

.field public static final NFC_TRANSACTION_PERMISSION:Ljava/lang/String; = "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NfcController"

.field public static final TRANSACTION_EXTRA_AID:Ljava/lang/String; = "com.gsma.services.nfc.extra.AID"

.field public static final TRANSACTION_EXTRA_DATA:Ljava/lang/String; = "com.gsma.services.nfc.extra.DATA"

.field private static mNfcControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/gsma/services/nfc/NfcController;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/gsma/services/nfc/INfcController;


# instance fields
.field private mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

.field private mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIsHceCapable:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->mNfcControllers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    .line 49
    return-void
.end method

.method private constructor <init>(ZLcom/gsma/services/nfc/INfcController;)V
    .locals 1
    .param p1, "isHceCapable"    # Z
    .param p2, "service"    # Lcom/gsma/services/nfc/INfcController;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    .line 53
    sput-object v0, Lcom/gsma/services/nfc/NfcController;->mNfcControllers:Ljava/util/HashMap;

    .line 54
    iput-boolean p1, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    .line 55
    sput-object p2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 56
    return-void
.end method

.method private attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 252
    const-string v1, "NfcController"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    .line 254
    .local v0, "service":Lcom/gsma/services/nfc/INfcController;
    if-nez v0, :cond_0

    .line 255
    const-string v1, "NfcController"

    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    sput-object v0, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 60
    const-class v3, Lcom/gsma/services/nfc/NfcController;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 61
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "context cannot be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_1
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v2

    sput-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 67
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    if-nez v2, :cond_2

    .line 68
    const-string v2, "NfcController"

    const-string v4, "Could not retrieve NfcController service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Could not retrieve NfcController service"

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_2
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mNfcControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/nfc/NfcController;

    .line 73
    .local v1, "controller":Lcom/gsma/services/nfc/NfcController;
    if-nez v1, :cond_3

    .line 74
    new-instance v1, Lcom/gsma/services/nfc/NfcController;

    .end local v1    # "controller":Lcom/gsma/services/nfc/NfcController;
    invoke-direct {v1, v0}, Lcom/gsma/services/nfc/NfcController;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v1    # "controller":Lcom/gsma/services/nfc/NfcController;
    invoke-direct {v1, p0}, Lcom/gsma/services/nfc/NfcController;->storeAppInfo(Landroid/content/Context;)V

    .line 76
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mNfcControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_3
    invoke-interface {p1, v1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/NfcController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit v3

    return-void
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/INfcController;
    .locals 2

    .prologue
    .line 245
    const-string v1, "nfccontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 246
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/INfcController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    goto :goto_0
.end method

.method private storeAppInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mClassName:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public defineOffHostService(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 162
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_0
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/gsma/services/nfc/NfcController;->mClassName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/gsma/services/nfc/INfcController;->defineOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v1

    .line 168
    .local v1, "service":Lcom/gsma/services/nfc/OffHostService;
    if-nez v1, :cond_1

    .line 169
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "service":Lcom/gsma/services/nfc/OffHostService;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 174
    const/4 v1, 0x0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)V
    .locals 4
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 182
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    .line 187
    :try_start_0
    invoke-virtual {p1}, Lcom/gsma/services/nfc/OffHostService;->clearBanner()V

    .line 188
    :cond_1
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/gsma/services/nfc/INfcController;->deleteOffHostService(Ljava/lang/String;Lcom/gsma/services/nfc/OffHostService;)I

    move-result v1

    .line 189
    .local v1, "res":I
    if-nez v1, :cond_3

    .line 200
    .end local v1    # "res":I
    :cond_2
    :goto_0
    return-void

    .line 191
    .restart local v1    # "res":I
    :cond_3
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 192
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "The service has been defined through the Manifest and cannot be deleted"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_4
    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    .line 195
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public disableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 4
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 146
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->disableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v1

    .line 147
    .local v1, "res":I
    if-nez v1, :cond_2

    .line 154
    .end local v1    # "res":I
    :cond_1
    :goto_0
    return-void

    .line 149
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 150
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 4
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 122
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 127
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->enableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v1

    .line 128
    .local v1, "res":I
    if-nez v1, :cond_2

    .line 137
    .end local v1    # "res":I
    :cond_1
    :goto_0
    return-void

    .line 130
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 131
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 133
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NFC controller is not enabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public enableNfcController(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 3
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 97
    :try_start_0
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 98
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->enableNfcController(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 106
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 103
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDefaultOffHostService()Lcom/gsma/services/nfc/OffHostService;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-boolean v3, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v3, :cond_0

    .line 227
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_0
    :try_start_0
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    iget-object v4, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/gsma/services/nfc/INfcController;->getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v1

    .line 232
    .local v1, "service":Lcom/gsma/services/nfc/OffHostService;
    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/gsma/services/nfc/OffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 241
    .end local v1    # "service":Lcom/gsma/services/nfc/OffHostService;
    :cond_1
    :goto_0
    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 241
    goto :goto_0
.end method

.method public getOffHostServices()[Lcom/gsma/services/nfc/OffHostService;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-boolean v3, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v3, :cond_0

    .line 208
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_0
    :try_start_0
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    iget-object v4, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/gsma/services/nfc/INfcController;->getOffHostServices(Ljava/lang/String;)[Lcom/gsma/services/nfc/OffHostService;

    move-result-object v1

    .line 213
    .local v1, "service":[Lcom/gsma/services/nfc/OffHostService;
    if-eqz v1, :cond_1

    array-length v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    :cond_1
    move-object v1, v2

    .line 218
    .end local v1    # "service":[Lcom/gsma/services/nfc/OffHostService;
    :cond_2
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 218
    goto :goto_0
.end method

.method public isCardEmulationEnabled()Z
    .locals 3

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    :try_start_0
    sget-object v1, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v1}, Lcom/gsma/services/nfc/INfcController;->isCardEmulationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Lcom/gsma/services/nfc/NfcController;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v1}, Lcom/gsma/services/nfc/INfcController;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCardEmulationMode(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v0, p1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public onEnableNfcController(Z)V
    .locals 1
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v0, p1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    .line 265
    :cond_0
    return-void
.end method
