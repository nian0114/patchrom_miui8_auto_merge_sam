.class public Lcom/samsung/android/nfc/mpos/MPOSAdapter;
.super Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Stub;
.source "MPOSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SERVICE_NAME:Ljava/lang/String; = "secontroller"

.field private static final TAG:Ljava/lang/String; = "MPOSAdapter"

.field private static mAdapter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/nfc/mpos/MPOSAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;


# instance fields
.field private mCallbacks:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mAdapter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 110
    const-string v1, "MPOSAdapter"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-static {}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    move-result-object v0

    .line 112
    .local v0, "service":Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
    if-nez v0, :cond_0

    .line 113
    const-string v1, "MPOSAdapter"

    const-string v2, "Could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    sput-object v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    goto :goto_0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "appContext":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application(using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_1
    invoke-static {}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    .line 39
    sget-object v2, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    if-nez v2, :cond_2

    .line 40
    const-string v2, "MPOSAdapter"

    const-string v3, "Could not retrieve mPOS service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Could not retrieve mPOS service"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_2
    sget-object v2, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;

    .line 45
    .local v0, "adapter":Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    if-nez v0, :cond_3

    .line 46
    new-instance v0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;

    .end local v0    # "adapter":Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    invoke-direct {v0, v1}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    .restart local v0    # "adapter":Lcom/samsung/android/nfc/mpos/MPOSAdapter;
    sget-object v2, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mAdapter:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    return-object v0
.end method

.method private static getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
    .locals 2

    .prologue
    .line 104
    const-string v1, "secontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onErrorNotified(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallbacks:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallbacks:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;->onErrorNotified(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallbacks:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallbacks:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    invoke-interface {v0, p1}, Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;->onHciEvtTrasactionDetected(Landroid/content/Intent;)V

    .line 124
    :cond_0
    return-void
.end method

.method public selectHost(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v1, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->selectHost(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDedicatedReaderMode(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 76
    :try_start_0
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v1, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setDedicatedReaderMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnCallbacks(Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;)Z
    .locals 2
    .param p1, "callbacks"    # Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    .prologue
    .line 55
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mCallbacks:Lcom/samsung/android/nfc/mpos/MPOSAdapter$Callbacks;

    .line 56
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v1, p0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setOnCallbacks(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRfPower(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 86
    :try_start_0
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v1, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setRfPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->mService:Lcom/samsung/android/nfc/mpos/IMPOSAdapter;

    invoke-interface {v1, p1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter;->setTestMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method
