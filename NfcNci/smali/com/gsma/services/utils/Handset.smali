.class public Lcom/gsma/services/utils/Handset;
.super Ljava/lang/Object;
.source "Handset.java"


# static fields
.field public static final BATTERY_LOW_MODE:I = 0x90

.field public static final BATTERY_OPERATIONAL_MODE:I = 0x92

.field public static final BATTERY_POWER_OFF_MODE:I = 0x91

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final FELICA:I = 0x20

.field public static final HCI_SWP:I = 0x0

.field public static final MIFARE_CLASSIC:I = 0x21

.field public static final MIFARE_DESFIRE:I = 0x22

.field public static final MULTIPLE_ACTIVE_CEE:I = 0x1

.field public static final NFC_FORUM_TYPE3:I = 0x23

.field public static final OMAPI:I = 0x50

.field public static final SUCCESS:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION:I = 0x1f40

.field private static mService:Lcom/gsma/services/nfc/INfcController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Handset"

    sput-object v0, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/utils/Handset;->mService:Lcom/gsma/services/nfc/INfcController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/gsma/services/utils/Handset;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/utils/Handset;->mService:Lcom/gsma/services/nfc/INfcController;

    .line 40
    return-void
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 62
    sget-object v1, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-static {}, Lcom/gsma/services/utils/Handset;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    .line 64
    .local v0, "service":Lcom/gsma/services/nfc/INfcController;
    if-nez v0, :cond_0

    .line 65
    sget-object v1, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    sput-object v0, Lcom/gsma/services/utils/Handset;->mService:Lcom/gsma/services/nfc/INfcController;

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/INfcController;
    .locals 2

    .prologue
    .line 55
    const-string v1, "nfccontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/INfcController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public enableMultiEvt_transactionReception()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    sget-object v2, Lcom/gsma/services/utils/Handset;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2}, Lcom/gsma/services/nfc/INfcController;->enableMultiEvt_transactionReception()I

    move-result v1

    .line 45
    .local v1, "res":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 46
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/gsma/services/utils/Handset;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 52
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void

    .line 47
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 48
    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getAvailableSecureElements(I)Ljava/util/List;
    .locals 4
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/16 v2, 0x90

    if-eq p1, v2, :cond_0

    const/16 v2, 0x91

    if-eq p1, v2, :cond_0

    const/16 v2, 0x92

    if-eq p1, v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "an illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    :try_start_0
    sget-object v2, Lcom/gsma/services/utils/Handset;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p1}, Lcom/gsma/services/nfc/INfcController;->getAvailableSecureElements(I)[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "list":[Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 105
    .end local v1    # "list":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 101
    .restart local v1    # "list":[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v1    # "list":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/gsma/services/utils/Handset;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getProperty(I)Z
    .locals 3
    .param p1, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v1, 0x90

    if-eq p1, v1, :cond_0

    const/16 v1, 0x91

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x21

    if-eq p1, v1, :cond_0

    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    const/16 v1, 0x23

    if-eq p1, v1, :cond_0

    const/16 v1, 0x50

    if-eq p1, v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "an illegal or inappropriate argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    :try_start_0
    sget-object v1, Lcom/gsma/services/utils/Handset;->mService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v1, p1}, Lcom/gsma/services/nfc/INfcController;->getProperty(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/gsma/services/utils/Handset;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x1f40

    return v0
.end method
