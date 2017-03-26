.class Lcom/android/nfc/NfcService$EnableDisableTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableDisableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 1

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 1709
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)V
    .locals 0
    .param p2, "cb"    # Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1712
    iput-object p2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 1713
    return-void
.end method

.method private checkDefaultStatus(Z)Z
    .locals 4
    .param p1, "currentStatus"    # Z

    .prologue
    .line 1975
    move v0, p1

    .line 1976
    .local v0, "defaultStatus":Z
    const-string v1, "ON"

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->getDefaultState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1977
    const/4 v0, 0x1

    .line 1981
    :cond_0
    :goto_0
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return v0

    .line 1978
    :cond_1
    const-string v1, "OFF"

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->getDefaultState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1979
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method disableInternal()Z
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 2153
    const-string v2, "Nfc policy: Disabling NFC"

    .line 2154
    .local v2, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mState:I

    if-ne v5, v7, :cond_0

    .line 2155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Already Enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2156
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v5, v7, v2}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    move v3, v7

    .line 2249
    :goto_0
    return v3

    .line 2160
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2161
    const-string v5, "NfcService"

    const-string v8, "disconnect eSE"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2163
    .local v1, "key":I
    const-string v5, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v8, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/NfcService$OpenSecureElement;

    # setter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v8, v5}, Lcom/android/nfc/NfcService;->access$1802(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 2165
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v8

    iget v8, v8, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v5, v8}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    goto :goto_1

    .line 2167
    .end local v1    # "key":I
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->access$1802(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 2168
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mOpenEeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 2171
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    # getter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$1900()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2172
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->LedCoverRfDetectCallback()V

    .line 2174
    :cond_3
    const-string v5, "NfcService"

    const-string v8, "Disabling NFC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 2181
    new-instance v4, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v8, "disableInternal"

    const/16 v9, 0x2710

    invoke-direct {v4, v5, v8, v9}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2182
    .local v4, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v4}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2185
    const-string v5, "NXP_PN547C2"

    iget-object v8, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "NXP_PN548C2"

    iget-object v8, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "NXP_PN551"

    iget-object v8, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2188
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    if-ne v5, v7, :cond_8

    .line 2189
    const-string v5, "NfcService"

    const-string v8, "Power off : Disabling NFC Disabling ESE/UICC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v10, v5, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 2191
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v12}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    .line 2213
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v5, :cond_6

    .line 2214
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 2217
    :cond_6
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v5, v10, v10}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 2223
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 2225
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v8

    move-object v5, v6

    check-cast v5, [[Ljava/lang/String;

    invoke-virtual {v8, v6, v6, v5}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 2228
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    move-result v3

    .line 2229
    .local v3, "result":Z
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDeviceHost.deinitialize() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_7
    if-eqz v3, :cond_c

    .line 2231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2232
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v5, v7, v2}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    .line 2234
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v6, "NF01"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/nfc/NfcService;->insertStatusLog(Ljava/lang/String;J)V

    .line 2240
    :goto_3
    invoke-virtual {v4}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2242
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 2243
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 2244
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 2245
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->releaseSoundPool()V

    .line 2248
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    invoke-virtual {v5}, Lcom/android/nfc/HciEventControl;->checkUnBind()V

    goto/16 :goto_0

    .line 2193
    .end local v3    # "result":Z
    :cond_8
    const-string v5, "NfcService"

    const-string v8, "Disabling NFC Disabling ESE/UICC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v11}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    goto/16 :goto_2

    .line 2196
    :cond_9
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2197
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    if-ne v5, v7, :cond_a

    .line 2198
    const-string v5, "NfcService"

    const-string v8, "Power off : Disabling NFC Disabling ESE/UICC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v10, v5, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 2200
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v11}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    goto/16 :goto_2

    .line 2202
    :cond_a
    const-string v5, "NfcService"

    const-string v8, "Disabling NFC Disabling ESE/UICC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v12}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    goto/16 :goto_2

    .line 2205
    :cond_b
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2206
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    if-ne v5, v7, :cond_5

    .line 2207
    const-string v5, "NfcService"

    const-string v8, "Power off : Disabling NFC Disabling ESE/UICC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v10, v5, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 2209
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto/16 :goto_2

    .line 2236
    .restart local v3    # "result":Z
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error disabling NFC failed Reason: deinit fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2237
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v5, v10, v2}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 2245
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1703
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1734
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1736
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1969
    :cond_0
    :goto_0
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1970
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1722
    :pswitch_1
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing EnableDisable task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from bad state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v2, 0x0

    goto :goto_1

    .line 1739
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->checkEnablePopupForChinaNalSecurity()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1740
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChnEnablePopup mState - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mChnEnablePopupExist:Z

    if-nez v2, :cond_1

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->sendChnEnablePopup()V

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/nfc/NfcService;->mChnEnablePopupExist:Z

    goto :goto_0

    .line 1746
    :cond_1
    const-string v2, "NfcService"

    const-string v3, "sendChnEnablePopup mChnEnablePopupExist !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1755
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNFCBringup()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1757
    const-string v2, "NfcService"

    const-string v3, "Nfc need bringup!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1763
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto/16 :goto_0

    .line 1766
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/gsma/services/nfc/INfcControllerCallbacks;->onEnableNfcController(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1767
    :catch_0
    move-exception v11

    .line 1768
    .local v11, "e":Landroid/os/RemoteException;
    instance-of v2, v11, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_5

    .line 1769
    const-string v2, "NfcService"

    const-string v3, "Parent of onEnableNfcController is dead"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1771
    :cond_5
    const-string v2, "NfcService"

    const-string v3, "Can\'t execute onEnableNfcController callback"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1777
    .end local v11    # "e":Landroid/os/RemoteException;
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    goto/16 :goto_0

    .line 1780
    :sswitch_2
    sget-boolean v2, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->checkDefaultStatus(Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    .line 1781
    const-string v2, "NfcService"

    const-string v3, "checking on firmware download"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "airplane_override"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1783
    .local v8, "airplaneOverride":Z
    const-string v2, "1"

    const-string v3, "nfc.delay.boot"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1786
    .local v10, "doNeedDelay":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNFCBringup()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1788
    const-string v2, "NfcService"

    const-string v3, "Nfc need bringup!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1793
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "first_boot"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1794
    const-string v2, "NfcService"

    const-string v3, "First Boot"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_boot"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->supportUrgentFirmwareUpdate()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->setEnforceFWDownloadMode(Z)V

    .line 1805
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "nfc_on"

    sget-boolean v4, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v8, :cond_15

    .line 1807
    :cond_8
    const-string v2, "NfcService"

    const-string v3, "NFC is on. Doing normal stuff"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "isNFCEnabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, v17

    # setter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0, v2}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1816
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "isNFCEnabled"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1817
    const-string v2, "NfcService"

    const-string v3, "EDM : nfc policy disabled. can\'t enable it "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_a
    :goto_2
    const-string v2, "KOREA"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c

    .line 1830
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "NfcService"

    const-string v3, "turn on ReaderMode - SETUPWIZARD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->saveNfcReaderOnSetting(Z)V

    .line 1836
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->supportUce()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v10, :cond_f

    .line 1837
    const-string v2, "NfcService"

    const-string v3, "sim waiting start... wait for 4*3000ms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/4 v9, 0x0

    .line 1839
    .local v9, "counter":I
    const/4 v14, 0x0

    .line 1840
    .local v14, "simState":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1841
    .local v15, "simState1":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1842
    .local v16, "simState2":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x4

    if-ge v9, v2, :cond_e

    .line 1843
    const-string v2, "gsm.sim.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1844
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    .line 1847
    .local v12, "no_Of_Sim":I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_12

    .line 1849
    const-string v2, "NfcService"

    const-string v3, "inside dual SIM "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1851
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1852
    .local v13, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v15, v13, v2

    .line 1853
    const/4 v2, 0x1

    aget-object v16, v13, v2

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkSimStateReady(Ljava/lang/String;)Z
    invoke-static {v2, v15}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v0, v16

    # invokes: Lcom/android/nfc/NfcService;->checkSimStateReady(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1855
    :cond_d
    const-string v2, "NfcService"

    const-string v3, "SIM is initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    .end local v12    # "no_Of_Sim":I
    .end local v13    # "parts":[Ljava/lang/String;
    :cond_e
    :goto_4
    const/4 v2, 0x4

    if-lt v9, v2, :cond_f

    .line 1885
    const-string v2, "NfcService"

    const-string v3, "Timeout : SIM is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    .end local v9    # "counter":I
    .end local v14    # "simState":Ljava/lang/String;
    .end local v15    # "simState1":Ljava/lang/String;
    .end local v16    # "simState2":Ljava/lang/String;
    :cond_f
    const-string v2, "nfc.delay.boot"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    .line 1893
    const-string v2, "ENABLE"

    const-string v3, "persist.nfc.reader_mode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1894
    const-string v2, "NfcService"

    const-string v3, "start reader mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->SLSI_GCFReaderModeTest(Z)Z

    goto/16 :goto_0

    .line 1820
    :catch_1
    move-exception v11

    .line 1821
    .local v11, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v11}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v11    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1858
    .restart local v9    # "counter":I
    .restart local v12    # "no_Of_Sim":I
    .restart local v13    # "parts":[Ljava/lang/String;
    .restart local v14    # "simState":Ljava/lang/String;
    .restart local v15    # "simState1":Ljava/lang/String;
    .restart local v16    # "simState2":Ljava/lang/String;
    :cond_10
    const-string v2, "NfcService"

    const-string v3, "SIM is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    .end local v13    # "parts":[Ljava/lang/String;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 1879
    const-wide/16 v2, 0xbb8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 1880
    :catch_2
    move-exception v2

    goto/16 :goto_3

    .line 1861
    :cond_11
    const-string v2, "NfcService"

    const-string v3, "simState is not yet initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1864
    :cond_12
    const-string v2, "NfcService"

    const-string v3, "inside single SIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->isneededextradelay()Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkSimStateReady(Ljava/lang/String;)Z
    invoke-static {v2, v14}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1867
    const-string v2, "NfcService"

    const-string v3, "SIM is initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1870
    :cond_13
    const-string v2, "NfcService"

    const-string v3, "SIM is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1874
    :cond_14
    const-string v2, "NfcService"

    const-string v3, "Extra delay is needed because of SIM VCC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1900
    .end local v9    # "counter":I
    .end local v12    # "no_Of_Sim":I
    .end local v14    # "simState":Ljava/lang/String;
    .end local v15    # "simState1":Ljava/lang/String;
    .end local v16    # "simState2":Ljava/lang/String;
    :cond_15
    const-string v2, "NfcService"

    const-string v3, "NFC is off.  Checking firmware version"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v3, "NF01"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/nfc/NfcService;->insertStatusLog(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1907
    .end local v8    # "airplaneOverride":Z
    .end local v10    # "doNeedDelay":Z
    :sswitch_3
    const-string v2, "NfcService"

    const-string v3, "TASK_CHN_ENABLE_DIRECT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/nfc/NfcService;->mChnEnablePopupExist:Z

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto/16 :goto_0

    .line 1914
    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->callback:Lcom/gsma/services/nfc/INfcControllerCallbacks;

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/gsma/services/nfc/INfcControllerCallbacks;->onEnableNfcController(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1915
    :catch_3
    move-exception v11

    .line 1916
    .local v11, "e":Landroid/os/RemoteException;
    instance-of v2, v11, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_17

    .line 1917
    const-string v2, "NfcService"

    const-string v3, "Parent of onEnableNfcController is dead"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1919
    :cond_17
    const-string v2, "NfcService"

    const-string v3, "Can\'t execute onEnableNfcController callback"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1926
    .end local v11    # "e":Landroid/os/RemoteException;
    :sswitch_4
    const-string v2, "NfcService"

    const-string v3, "TASK_CHN_ENABLE_CANCEL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/nfc/NfcService;->mChnEnablePopupExist:Z

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1929
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    .line 1930
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    goto/16 :goto_0

    .line 1934
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->routingChangeInternal()V

    goto/16 :goto_0

    .line 1938
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_19

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->saveNfcReaderOnSetting(Z)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v3, "NF02"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/nfc/NfcService;->insertStatusLog(Ljava/lang/String;J)V

    .line 1944
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1945
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "NfcService"

    const-string v3, "applyRouting #13 - TASK_READER_ENABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_0

    .line 1948
    :cond_19
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TASK_READER_ENABLE - wrong state transition mState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1952
    :sswitch_7
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_1a

    const-string v2, "NfcService"

    const-string v3, "NFC-C polling OFF - TASK_READER_DISABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->saveNfcReaderOnSetting(Z)V

    .line 1957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v3, "NF02"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/nfc/NfcService;->insertStatusLog(Ljava/lang/String;J)V

    .line 1959
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_0

    .line 1962
    :cond_1b
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TASK_READER_DISABLE - wrong state transition mState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1736
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x64 -> :sswitch_5
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
    .end sparse-switch
.end method

.method enableInternal()Z
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2025
    const-string v0, "Nfc policy: Enabling NFC"

    .line 2026
    .local v0, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    if-ne v4, v8, :cond_0

    .line 2027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Already Enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2028
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    .line 2145
    :goto_0
    return v2

    .line 2031
    :cond_0
    const-string v4, "NfcService"

    const-string v5, "Enabling NFC"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-virtual {p0, v9}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 2034
    new-instance v1, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v5, "enableInternal"

    const v6, 0x15f90

    invoke-direct {v1, v4, v5, v6}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2035
    .local v1, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2037
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2038
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2040
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v5

    iput v5, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 2041
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableInternal(); screenState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v6, v6, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v4, :pswitch_data_0

    .line 2055
    :cond_1
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2056
    const-string v2, "NfcService"

    const-string v4, "Error enabling NFC"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 2058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Error enabling NFC failed Reason: init fail"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, 0x0

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v2, v4, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2063
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2066
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    move v2, v3

    goto/16 :goto_0

    .line 2044
    :pswitch_0
    :try_start_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2066
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v2

    .line 2047
    :pswitch_1
    :try_start_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto :goto_1

    .line 2050
    :pswitch_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto :goto_1

    .line 2063
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2066
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2069
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_4

    .line 2072
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2075
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v4, Lcom/android/nfc/NfcService;->mPermitReRouteAllAids:Z

    .line 2077
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->getAidTableSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled(I)V

    .line 2080
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 2081
    :try_start_5
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 2082
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v6, v6, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 2085
    const-string v5, "KOREA"

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2086
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "nfc_reader_on"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2087
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 2095
    :goto_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2097
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->initSoundPool()V

    .line 2101
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v5

    iput v5, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 2102
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableInternal(); screenState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v6, v6, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    if-ne v4, v9, :cond_6

    .line 2104
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_6

    .line 2105
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "NfcService"

    const-string v5, "Return unlock screen state for LocalFota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    iput v8, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 2110
    :cond_6
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "NfcService"

    const-string v5, "applyRouting #1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_7
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2112
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    packed-switch v4, :pswitch_data_1

    .line 2125
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isFactoryTestApp()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2126
    const-string v4, "NfcService"

    const-string v5, "enableInternal() : isFactoryTestApp() is true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z
    invoke-static {v4, v2}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 2130
    :cond_9
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2132
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2133
    const-string v4, "NfcService"

    const-string v5, "enableInternal() : mNoDiscoveryNfcOn was true. So make it false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mNoDiscoveryNfcOn:Z
    invoke-static {v4, v3}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 2135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Enabled without Discovery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2136
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    .line 2143
    :goto_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v4, "NF01"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/nfc/NfcService;->insertStatusLog(Ljava/lang/String;J)V

    .line 2144
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    invoke-virtual {v3}, Lcom/android/nfc/HciEventControl;->checkBind()V

    goto/16 :goto_0

    .line 2063
    :catchall_1
    move-exception v2

    :try_start_6
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2089
    :cond_a
    const/4 v5, 0x5

    :try_start_7
    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    goto/16 :goto_2

    .line 2095
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 2093
    :cond_b
    const/4 v5, 0x3

    :try_start_8
    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    .line 2114
    :pswitch_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v9}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto :goto_3

    .line 2117
    :pswitch_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto/16 :goto_3

    .line 2120
    :pswitch_5
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/android/nfc/DeviceHost;->setPowerMode(I)Z

    goto/16 :goto_3

    .line 2139
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2140
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    goto :goto_4

    .line 2042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2112
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1703
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 1989
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "NfcService"

    const-string v6, "EnableDisableTask onPostExecute()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isFirstInit:Z
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 1993
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->isFirstInit:Z
    invoke-static {v5, v7}, Lcom/android/nfc/NfcService;->access$1102(Lcom/android/nfc/NfcService;Z)Z

    .line 1994
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.nfc.NFCSERVICE_STARTED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v1, "initIntent":Landroid/content/Intent;
    const-string v5, "nfc_state"

    sget-boolean v6, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1996
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1998
    .end local v1    # "initIntent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v0, "authIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2002
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcFeatureUtil;->supportUrgentFirmwareUpdate()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isUrgentFwUpdateChecked:Z
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2003
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, 0x1

    # setter for: Lcom/android/nfc/NfcService;->isUrgentFwUpdateChecked:Z
    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->access$1202(Lcom/android/nfc/NfcService;Z)Z

    .line 2004
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->getNfcFwVendor()Ljava/lang/String;

    move-result-object v3

    .line 2005
    .local v3, "vendor":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfcService;->getNfcFwVersion(I)Ljava/lang/String;

    move-result-object v4

    .line 2007
    .local v4, "version":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.nfc.NFC_URGENT_FW_UPDATE_CHECK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "vendor"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    const-string v5, "version"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NFC_URGENT_FW_UPDATE_CHECK vendor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_2
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NFC_URGENT_FW_UPDATE_CHECK version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.permission.NFC_URGENT_FW_UPDATE_CHECK"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2017
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "vendor":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method routingChangeInternal()V
    .locals 3

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserId:I
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcRoutingChanged(ILjava/lang/String;)V

    .line 2257
    :cond_0
    return-void
.end method

.method updateState(I)V
    .locals 8
    .param p1, "newState"    # I

    .prologue
    .line 2261
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 2262
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    if-ne p1, v3, :cond_0

    .line 2263
    monitor-exit v4

    .line 2299
    :goto_0
    return-void

    .line 2265
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput p1, v3, Lcom/android/nfc/NfcService;->mState:I

    .line 2266
    const-string v0, "android.nfc.extra.PREF_ADAPTER_STATE"

    .line 2267
    .local v0, "EXTRA_PREF_ADAPTER_STATE":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2268
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2269
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2275
    const-string v3, "android.nfc.extra.PREF_ADAPTER_STATE"

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "nfc_on"

    sget-boolean v7, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2278
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2282
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 2283
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/16 v5, 0x1f5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2289
    :cond_1
    :goto_1
    const-string v3, "KOREA"

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcFeatureUtil;->getOperatorSettingUiType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2290
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2291
    .local v2, "intent2":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2292
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2294
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2298
    .end local v2    # "intent2":Landroid/content/Intent;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "EXTRA_PREF_ADAPTER_STATE":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2284
    .restart local v0    # "EXTRA_PREF_ADAPTER_STATE":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 2285
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/16 v5, 0x1f6

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
