.class final Lcom/android/nfc/NfcService$NfcAdapterExtrasService;
.super Landroid/nfc/INfcAdapterExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3990
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapterExtras$Stub;-><init>()V

    return-void
.end method

.method private _open(Landroid/os/IBinder;)I
    .locals 7
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x3

    const/4 v2, -0x2

    .line 4025
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 4026
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 4027
    const/4 v2, -0x6

    monitor-exit v3

    .line 4076
    :goto_0
    return v2

    .line 4029
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v4, :cond_1

    .line 4031
    const/4 v2, -0x1

    monitor-exit v3

    goto :goto_0

    .line 4077
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4037
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "GOOGLE"

    # getter for: Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4038
    monitor-exit v3

    goto :goto_0

    .line 4040
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4042
    monitor-exit v3

    goto :goto_0

    .line 4045
    :cond_3
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_open :: mopenEe size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    :cond_4
    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v1

    .line 4050
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 4051
    const-string v2, "NfcService"

    const-string v4, "_open :: doOpenSecureElementConnection"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->doOpenSecureElementConnection()I

    move-result v4

    iput v4, v2, Lcom/android/nfc/NfcService;->mEeHandle:I

    .line 4058
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mEeHandle:I

    if-gez v2, :cond_6

    .line 4059
    const/4 v2, -0x3

    monitor-exit v3

    goto/16 :goto_0

    .line 4061
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    const/4 v4, 0x3

    const/16 v5, 0x7530

    invoke-interface {v2, v4, v5}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    .line 4063
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v4, Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v6, v6, Lcom/android/nfc/NfcService;->mEeHandle:I

    invoke-direct {v4, v5, v1, v6, p1}, Lcom/android/nfc/NfcService$OpenSecureElement;-><init>(Lcom/android/nfc/NfcService;IILandroid/os/IBinder;)V

    # setter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2, v4}, Lcom/android/nfc/NfcService;->access$1802(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 4065
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_open :: SE handle value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mEeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    :cond_7
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4067
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_open :: mOpenEeMap.put(getCallingPid(),mOpenEe) , getCallingPid() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4071
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4076
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mEeHandle:I

    monitor-exit v3

    goto/16 :goto_0

    .line 4072
    :catch_0
    move-exception v0

    .line 4073
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$OpenSecureElement;->binderDied()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private _transceive([B)[B
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4112
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 4113
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 4114
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4117
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/NfcService$OpenSecureElement;

    # setter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2, v0}, Lcom/android/nfc/NfcService;->access$1802(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 4118
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_transceive :: mOpenEe = (OpenSecureElement)(mOpenEeMap.get(getCallingPid())) , getCallingPid() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4122
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC EE is not open"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4124
    :cond_2
    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    iget v2, v2, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq v0, v2, :cond_3

    .line 4125
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4127
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4129
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcService;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3999
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4000
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 3992
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3993
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3994
    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4168
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4082
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4086
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V

    .line 4087
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .line 4088
    .local v1, "result":Landroid/os/Bundle;
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close :: Remain mopenEe size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4092
    :cond_0
    :goto_0
    return-object v1

    .line 4089
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 4090
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public getCardEmulationRoute(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4156
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4160
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v1

    const-string v2, "ESE"

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v0

    .line 4161
    .local v0, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/NfcEeObject;->getRoutingMode()I

    move-result v1

    return v1
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4172
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4173
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4006
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4009
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_open(Landroid/os/IBinder;)I

    move-result v0

    .line 4010
    .local v0, "handle":I
    if-gez v0, :cond_0

    .line 4011
    const-string v2, "NFCEE open exception."

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4015
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 4013
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public setCardEmulationRoute(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4135
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4138
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v3

    const-string v4, "ESE"

    invoke-virtual {v3, v4}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v2

    .line 4139
    .local v2, "nfcEeObj":Lcom/android/nfc/cardemulation/NfcEeObject;
    invoke-virtual {v2, p2}, Lcom/android/nfc/cardemulation/NfcEeObject;->setRoutingMode(I)V

    .line 4142
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 4143
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4146
    :try_start_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4152
    :goto_0
    return-void

    .line 4147
    :catch_0
    move-exception v1

    .line 4148
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "NfcService"

    const-string v4, "failed to set card emulation mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4149
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 4150
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "NfcService"

    const-string v4, "failed to set card emulation mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4097
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 4102
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_transceive([B)[B

    move-result-object v1

    .line 4103
    .local v1, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v2

    .line 4104
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "out"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4108
    .end local v1    # "out":[B
    :goto_0
    return-object v2

    .line 4105
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 4106
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method
