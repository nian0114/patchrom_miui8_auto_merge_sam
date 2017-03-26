.class final Lcom/android/nfc/NfcService$NfcAdapterService;
.super Landroid/nfc/INfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2552
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapter$Stub;-><init>()V

    return-void
.end method

.method private computeLockscreenPollMask([I)I
    .locals 7
    .param p1, "techList"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 3224
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3226
    .local v2, "techCodeToMask":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3228
    const-string v3, "NXP_PN547C2"

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NXP_PN548C2"

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NXP_PN551"

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3231
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3236
    :goto_0
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3238
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3240
    const/4 v1, 0x0

    .line 3242
    .local v1, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 3243
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3244
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 3242
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3234
    .end local v0    # "i":I
    .end local v1    # "mask":I
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3248
    .restart local v0    # "i":I
    .restart local v1    # "mask":I
    :cond_3
    return v1
.end method


# virtual methods
.method public NetworkResetAtt()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3521
    const-string v0, "ATT"

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mIconType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3532
    :cond_0
    :goto_0
    return-void

    .line 3522
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3523
    const-string v0, "NfcService"

    const-string v1, "NetworkResetAtt is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3525
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3526
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3527
    const-string v0, "NfcService"

    const-string v1, "NFC network reset ATT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 3529
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 3530
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public SetWcControl(I)Z
    .locals 6
    .param p1, "isStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 3460
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3461
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const-string v3, "/sys/class/power_supply/battery/wc_control"

    invoke-virtual {v1, v3, p1}, Lcom/android/nfc/NfcService;->fileWriteInt(Ljava/lang/String;I)Z

    move-result v0

    .line 3462
    .local v0, "result":Z
    const-string v1, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetWcControl isStart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    if-ne p1, v5, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 3464
    const-string v1, "NfcService"

    const-string v3, "applyRouting #16"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3467
    :cond_0
    monitor-exit v2

    return v0

    .line 3468
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public StartLedCover()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3426
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3427
    :try_start_0
    const-string v0, "NfcService"

    const-string v2, "StartLedCover"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    # getter for: Lcom/android/nfc/NfcService;->isAuthTransaction:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/nfc/NfcService;->isFirmwareDown:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3429
    :cond_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    const-string v2, "StagTransaction is working"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x20

    aput-byte v3, v0, v2

    monitor-exit v1

    .line 3442
    :goto_0
    return-object v0

    .line 3432
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 3433
    :cond_3
    const-string v0, "NfcService"

    const-string v2, "Can not start LED Cover because Now NFC state changing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x20

    aput-byte v3, v0, v2

    monitor-exit v1

    goto :goto_0

    .line 3444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3436
    :cond_4
    :try_start_1
    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 3437
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartLedCover::wirelessCharing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x20

    aput-byte v3, v0, v2

    monitor-exit v1

    goto :goto_0

    .line 3440
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    .line 3441
    const/4 v0, 0x1

    # setter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1902(Z)Z

    .line 3442
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->StartLedCover()[B

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public StopLedCover()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3449
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3451
    :try_start_0
    const-string v0, "NfcService"

    const-string v2, "StopLedCover"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->StopLedCover()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3454
    const/4 v2, 0x0

    :try_start_1
    # setter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1902(Z)Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1902(Z)Z

    throw v0

    .line 3456
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public TransceiveLedCover([B)[B
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3412
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3413
    :try_start_0
    const-string v0, "NfcService"

    const-string v2, "TransceiveLedCover"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3415
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransceiveLedCover::wirelessCharing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/nfc/NfcService;->wirelessCharing:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x20

    aput-byte v3, v0, v2

    monitor-exit v1

    .line 3419
    :goto_0
    return-object v0

    .line 3418
    :cond_1
    const/4 v0, 0x1

    # setter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1902(Z)Z

    .line 3419
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->TransceiveLedCover([B)[B

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 3421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
    .locals 3
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "techList"    # [I

    .prologue
    .line 3201
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3203
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->computeLockscreenPollMask([I)I

    move-result v0

    .line 3204
    .local v0, "lockscreenPollMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3205
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/NfcUnlockManager;->addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I

    .line 3206
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3208
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "applyRouting #5"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3210
    return-void

    .line 3206
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "b"    # Landroid/os/IBinder;
    .param p2, "userHandle"    # I
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3117
    .local p5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 3120
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    .line 3121
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v4, "changeRoutingTable : NFC is not enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_0
    monitor-exit v3

    .line 3150
    :goto_0
    return-void

    .line 3125
    :cond_1
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proto : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tech : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", services : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3127
    :cond_2
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    if-eqz p5, :cond_4

    .line 3129
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mChangedTableDeathRecipient:Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3141
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mUserIdForTempTable:I
    invoke-static {v2, p2}, Lcom/android/nfc/NfcService;->access$3102(Lcom/android/nfc/NfcService;I)I

    .line 3142
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mTempProto:Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/android/nfc/NfcService;->access$3202(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    .line 3143
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mTempTech:Ljava/lang/String;
    invoke-static {v2, p4}, Lcom/android/nfc/NfcService;->access$3302(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    .line 3144
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mTempServices:Ljava/util/List;
    invoke-static {v2, p5}, Lcom/android/nfc/NfcService;->access$3402(Lcom/android/nfc/NfcService;Ljava/util/List;)Ljava/util/List;

    .line 3146
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 3147
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x190

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3148
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3149
    monitor-exit v3

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3130
    :catch_0
    move-exception v0

    .line 3131
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "NfcService"

    const-string v4, "changeRoutingTable : Remote binder has already died."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mChangedTableDeathRecipient:Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ChangedTableDeathRecipient;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3136
    :catch_1
    move-exception v0

    .line 3137
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_5
    const-string v2, "NfcService"

    const-string v4, "changeRoutingTable : Change Table Binder was never registered."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public closeSecNdefService(I)I
    .locals 2
    .param p1, "secNdefServiceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2954
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2955
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isSecNdefEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2961
    :cond_0
    :goto_0
    return v0

    .line 2958
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->closeSecNdefService(I)I

    move-result v0

    goto :goto_0
.end method

.method public createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "SSAP"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "type"    # [B
    .param p5, "id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 2936
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2937
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isSecNdefEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2949
    :cond_0
    :goto_0
    return v6

    .line 2940
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2943
    :cond_2
    const/4 v6, 0x0

    .line 2945
    .local v6, "serviceId":I
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/P2pLinkManager;->createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 2947
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 11
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2647
    const-string v7, "Nfc policy: Disabling NFC"

    .line 2648
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2651
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const-string v1, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2652
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v10, v0}, Lcom/android/nfc/NfcService;->access$2202(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2654
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2655
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2657
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "isNFCStateChangeAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    const-string v0, "NfcService"

    const-string v1, "disable() : EDM : isNFCStateChangeAllowed is false. can\'t change it "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EDM : isNFCStateChangeAllowed is false. failed Reason: disable reject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2660
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v0, v1, v7}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2666
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2679
    :goto_0
    return v0

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2671
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 2672
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v8}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 2674
    :cond_2
    # getter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2675
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->LedCoverRfDetectCallback()V

    .line 2677
    :cond_3
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v9, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v9

    .line 2679
    goto :goto_0

    .line 2663
    :catch_0
    move-exception v6

    .line 2664
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2666
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public disableFilterCondition(B)Z
    .locals 1
    .param p1, "filterConditionTag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 3027
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportAidFiltering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableNdefPush()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2754
    const-string v0, "Nfc policy: Disabling AndroidBeam_"

    .line 2755
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2756
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 2757
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-nez v1, :cond_0

    .line 2758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Already disabled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2759
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v1, v3, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    .line 2760
    monitor-exit v2

    .line 2776
    :goto_0
    return v5

    .line 2762
    :cond_0
    const-string v1, "NfcService"

    const-string v3, "disabling NDEF Push"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ndef_push_on"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2764
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2765
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 2766
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 2767
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2768
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 2771
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/P2pLinkManager;->sendBeamChangeIntent(Z)V

    .line 2773
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Already disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2775
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v1, v5, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    goto :goto_0

    .line 2773
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2911
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    .line 2912
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2906
    return-void
.end method

.method public enable()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2555
    const-string v12, "Nfc policy: Enabling NFC"

    .line 2557
    .local v12, "msg":Ljava/lang/String;
    sget-boolean v0, Lcom/android/nfc/NfcService;->isVzw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_enable_by_user"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2558
    sget-boolean v0, Lcom/android/nfc/NfcService;->mFirstUserTurnOn:Z

    if-nez v0, :cond_2

    .line 2559
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 2560
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 2561
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2562
    .local v10, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v0, "com.android.systemui"

    iget-object v1, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.settings"

    iget-object v1, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2564
    :cond_1
    iget v0, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterService;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2565
    const-string v0, "NfcService"

    const-string v1, "This device\'s operator is VZW and User first turn on NFC!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/nfc/NfcTurnOnActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2567
    .local v7, "dialogIntent":Landroid/content/Intent;
    const v0, 0x10008000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2568
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2569
    const/4 v0, 0x0

    .line 2642
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v7    # "dialogIntent":Landroid/content/Intent;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v0

    .line 2574
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Now PREF_FIRST_ENABLE_BY_USER is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_enable_by_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2576
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2580
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2584
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2585
    iget-object v13, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isNFCEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v13, v0}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2587
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2588
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2590
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "isNFCEnabled"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2591
    const-string v0, "NfcService"

    const-string v1, "enable() : EDM : nfc policy disabled. can\'t enable it "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EDM : nfc policy disabled. failed Reason: Enable reject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2593
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v0, v1, v12}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    const/4 v0, 0x0

    .line 2599
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2603
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const-string v1, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2604
    iget-object v13, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isNFCStateChangeAllowed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v13, v0}, Lcom/android/nfc/NfcService;->access$2202(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2606
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2607
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2609
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "isNFCStateChangeAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2610
    const-string v0, "NfcService"

    const-string v1, "enable() : EDM : isNFCStateChangeAllowed is false. can\'t change it "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EDM : isNFCStateChangeAllowed is false. failed Reason: Enable reject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2612
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v0, v1, v12}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2613
    const/4 v0, 0x0

    .line 2618
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2596
    :catch_0
    move-exception v8

    .line 2597
    .local v8, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v8}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2599
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v8    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2618
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2624
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 2626
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2627
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    if-nez v0, :cond_8

    .line 2628
    const-string v0, "NfcService"

    const-string v1, "denying enable() request (airplane mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "denying enable() request (airplane mode) failed Reason: Enable reject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2630
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v0, v1, v12}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    .line 2631
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2615
    :catch_1
    move-exception v8

    .line 2616
    .restart local v8    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v8}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2618
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2634
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "airplane_override"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2635
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2637
    :cond_9
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2640
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterService;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/android/nfc/NfcService;->mChnEnablePopupCallingPid:I

    .line 2642
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public enableDisableSeTestMode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "SE"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3253
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3254
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "Test Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->enableDisableTestMode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3258
    .local v0, "nfcEeName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3259
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    .line 3260
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3262
    :cond_1
    return-void
.end method

.method public enableFilterCondition(B)Z
    .locals 1
    .param p1, "filterConditionTag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 3017
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportAidFiltering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableNdefPush()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2726
    const-string v0, "Nfc policy: Enabling AndroidBeam_"

    .line 2727
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2728
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 2729
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v1, :cond_0

    .line 2730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Already Enabled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2731
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v1, v3, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    .line 2732
    monitor-exit v2

    .line 2749
    :goto_0
    return v5

    .line 2735
    :cond_0
    const-string v1, "NfcService"

    const-string v3, "enabling NDEF Push"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ndef_push_on"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2737
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2738
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 2739
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 2740
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 2741
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 2744
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/P2pLinkManager;->sendBeamChangeIntent(Z)V

    .line 2746
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2748
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->auditLog(ZLjava/lang/String;)V
    invoke-static {v1, v5, v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    goto :goto_0

    .line 2746
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableSecNdef(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2926
    sput-boolean p1, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    .line 2927
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    return v0
.end method

.method public getDefaultRoutingDestination()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3286
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3287
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    const-string v2, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3290
    .local v0, "defaultRoute":Ljava/lang/String;
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRoutingDestination / defaultRoute ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    return-object v0
.end method

.method public getIdm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3515
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3499
    const/4 v0, -0x1

    return v0
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/nfc/NfcPermissions;->enforceNfceeAdminPerm(Landroid/content/Context;Lcom/android/nfc/NfceeAccessControl;Ljava/lang/String;)V

    .line 3195
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    return-object v0
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    .line 2892
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNfcTagInterface()Landroid/nfc/INfcTag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    return-object v0
.end method

.method public getRwP2pState()I
    .locals 1

    .prologue
    .line 3476
    const/4 v0, 0x0

    return v0
.end method

.method public getSeSupportedTech()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3369
    const/4 v2, 0x0

    .local v2, "techRouting":I
    const/4 v1, 0x0

    .line 3370
    .local v1, "rfParam":I
    const-string v0, ""

    .line 3372
    .local v0, "defaultTechRouting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3373
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 3374
    :cond_0
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NfcService"

    const-string v4, "Enter : getSeSupportedTech"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->doGetSeSupportedTech()I

    move-result v1

    .line 3378
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v3

    const-string v4, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {v3, v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3382
    const-string v3, "ESE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3383
    const/4 v2, 0x1

    .line 3389
    :goto_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3390
    and-int/lit16 v3, v1, 0xf0

    if-nez v3, :cond_2

    .line 3391
    and-int/lit8 v3, v1, 0xf

    if-nez v3, :cond_5

    .line 3392
    const/4 v2, 0x0

    .line 3400
    :cond_2
    :goto_1
    shl-int/lit8 v3, v2, 0x8

    or-int/2addr v3, v1

    .line 3404
    :goto_2
    return v3

    .line 3384
    :cond_3
    const-string v3, "UICC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3385
    const/4 v2, 0x2

    goto :goto_0

    .line 3387
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 3394
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 3404
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2898
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    monitor-exit v1

    return v0

    .line 2900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invokeBeam()V
    .locals 2

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2847
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 2852
    :goto_0
    return-void

    .line 2850
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Calling activity not in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    .locals 4
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 2856
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2857
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2858
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2859
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2878
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2879
    return-void
.end method

.method public isNdefPushEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2716
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2717
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    monitor-exit v1

    .line 2720
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 2721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2720
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isSecNdefEnabled()Z
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2932
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3505
    const/4 v0, 0x0

    return v0
.end method

.method public isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "SEName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3185
    const/4 v0, 0x0

    .line 3186
    .local v0, "bTrusted":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/NfcService;->isTrustedPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3187
    return v0
.end method

.method public pausePolling(I)V
    .locals 6
    .param p1, "timeoutInMs"    # I

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2686
    if-lez p1, :cond_0

    int-to-long v0, p1

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2687
    :cond_0
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refusing to pause polling for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :goto_0
    return-void

    .line 2691
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2692
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 2693
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2694
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2696
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prepareSwitchedOffState()V
    .locals 0

    .prologue
    .line 3488
    return-void
.end method

.method public readerDisable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 3156
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "readerDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 3159
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3160
    return v4
.end method

.method public readerEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3165
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "readerEnable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 3168
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    if-nez v2, :cond_1

    .line 3169
    const-string v1, "NfcService"

    const-string v2, "denying readerEnable() request (airplane mode)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :goto_0
    return v0

    .line 3177
    :cond_1
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 3178
    goto :goto_0
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    .locals 3
    .param p1, "token"    # Landroid/nfc/INfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3214
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3215
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcUnlockManager;->removeUnlockHandler(Landroid/os/IBinder;)I

    .line 3216
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3218
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "applyRouting #6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3220
    return-void

    .line 3216
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumePolling()V
    .locals 3

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2703
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2704
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    if-nez v0, :cond_0

    .line 2705
    monitor-exit v1

    .line 2712
    :goto_0
    return-void

    .line 2708
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 2709
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 2710
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2711
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSecDefaultNdefMsg(Landroid/nfc/NdefMessage;)I
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2978
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2979
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isSecNdefEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2985
    :cond_0
    :goto_0
    return v0

    .line 2982
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->secSendAbeamNdefMsg(Landroid/nfc/NdefMessage;)I

    move-result v0

    goto :goto_0
.end method

.method public sendSecNdefMsg(ILandroid/nfc/NdefMessage;)I
    .locals 2
    .param p1, "secNdefServiceId"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 2966
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2967
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isSecNdefEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2973
    :cond_0
    :goto_0
    return v0

    .line 2970
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->secSendNdefMsg(ILandroid/nfc/NdefMessage;)I

    move-result v0

    goto :goto_0
.end method

.method public setAppCallback(Landroid/nfc/IAppCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/nfc/IAppCallback;

    .prologue
    .line 2820
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2823
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2824
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2826
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    .line 2830
    :cond_0
    :goto_0
    return-void

    .line 2827
    :cond_1
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    .line 2828
    const-string v1, "NfcService"

    const-string v2, "Disabling default Beam behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultRoutingDestination(Ljava/lang/String;)V
    .locals 4
    .param p1, "SE"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3270
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportAdvancedSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3271
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "do not support advanced setting menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :cond_0
    :goto_0
    return-void

    .line 3276
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEeObjectUtil:Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3277
    :cond_2
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "Warnig - This values cannot be NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3281
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-object p1, v0, Lcom/android/nfc/NfcService;->mDefaultIsoRoute:Ljava/lang/String;

    .line 3282
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setFilterList([B)Z
    .locals 3
    .param p1, "filterList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 3006
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportAidFiltering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3011
    :goto_0
    return v0

    .line 3008
    :cond_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilterList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/nfc/NfcService;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .locals 8
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techListsParcel"    # Landroid/nfc/TechListParcel;

    .prologue
    const/4 v6, 0x0

    .line 2782
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2784
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2785
    const-string v5, "NfcService"

    const-string v6, "setForegroundDispatch: Caller not in foreground."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :goto_0
    return-void

    .line 2790
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 2791
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v7

    move-object v5, v6

    check-cast v5, [[Ljava/lang/String;

    invoke-virtual {v7, v6, v6, v5}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 2796
    :cond_1
    if-eqz p2, :cond_2

    .line 2797
    array-length v5, p2

    if-nez v5, :cond_4

    .line 2798
    const/4 p2, 0x0

    :cond_2
    move-object v4, v6

    .line 2809
    check-cast v4, [[Ljava/lang/String;

    .line 2810
    .local v4, "techLists":[[Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 2811
    invoke-virtual {p3}, Landroid/nfc/TechListParcel;->getTechLists()[[Ljava/lang/String;

    move-result-object v4

    .line 2814
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 2800
    .end local v4    # "techLists":[[Ljava/lang/String;
    :cond_4
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2801
    .local v1, "filter":Landroid/content/IntentFilter;
    if-nez v1, :cond_5

    .line 2802
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "null IntentFilter"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2800
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setHciEventCallback(Landroid/nfc/INfcHciEventCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/nfc/INfcHciEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2992
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.NFC"

    const-string v3, "NFC permission required"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.nfc.permission.MPOS"

    const-string v3, "mPOS permission required"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2998
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;
    invoke-static {v1, p1}, Lcom/android/nfc/NfcService;->access$2702(Lcom/android/nfc/NfcService;Landroid/nfc/INfcHciEventCallback;)Landroid/nfc/INfcHciEventCallback;

    .line 2999
    return-void

    .line 2995
    :catch_0
    move-exception v0

    .line 2996
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NfcService"

    const-string v2, "mPOS permission required"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLedCoverCallback(Landroid/nfc/IAppCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/IAppCallback;

    .prologue
    .line 2834
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "LED Cover Callback is registed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mLedCallback:Landroid/nfc/IAppCallback;
    invoke-static {v0, p1}, Lcom/android/nfc/NfcService;->access$2602(Lcom/android/nfc/NfcService;Landroid/nfc/IAppCallback;)Landroid/nfc/IAppCallback;

    .line 2836
    return-void
.end method

.method public setListenMode(I)I
    .locals 1
    .param p1, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3493
    const/4 v0, -0x1

    return v0
.end method

.method public setListenMode2(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xff

    .line 3088
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3089
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 3090
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v3, "setListenMode : NFC is not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3113
    :goto_0
    return-void

    .line 3093
    :cond_1
    if-eq p2, v4, :cond_3

    .line 3095
    :try_start_1
    const-string v1, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setListenMode2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost;->doSetListenTechMask(I)V

    .line 3097
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mListenModeDeathRecipient:Lcom/android/nfc/NfcService$ListenModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ListenModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3110
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NfcService"

    const-string v3, "applyRouting #15"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3112
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3098
    :catch_0
    move-exception v0

    .line 3099
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "NfcService"

    const-string v3, "Remote binder has already died."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    const/16 v3, 0xff

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost;->doSetListenTechMask(I)V

    .line 3105
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mListenModeDeathRecipient:Lcom/android/nfc/NfcService$ListenModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ListenModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3106
    :catch_1
    move-exception v0

    .line 3107
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_5
    const-string v1, "NfcService"

    const-string v3, "Listen mode Binder was never registered."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public setP2pModes(II)V
    .locals 2
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2917
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->setP2pInitiatorModes(I)V

    .line 2918
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost;->setP2pTargetModes(I)V

    .line 2919
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "applyRouting #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2921
    return-void
.end method

.method public setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/nfc/IAppCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7d

    .line 3037
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3038
    const-string v1, "NfcService"

    const-string v2, "setReaderMode: Caller not in foreground."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :goto_0
    return-void

    .line 3042
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3043
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3044
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcService"

    const-string v3, "setReaderMode : NFC is not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 3081
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3047
    :cond_2
    if-eqz p3, :cond_6

    .line 3049
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v4, Lcom/android/nfc/NfcService$ReaderModeParams;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ReaderModeParams;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v4, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 3050
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput-object p2, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    .line 3051
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput p3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    .line 3052
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz p4, :cond_3

    const-string v1, "presence"

    const/16 v4, 0x7d

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_3
    iput v1, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 3056
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3062
    if-eqz p4, :cond_4

    const-string v1, "bit_transparent_mode"

    const/4 v3, 0x0

    invoke-virtual {p4, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3063
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v3, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    .line 3066
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3079
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "NfcService"

    const-string v3, "applyRouting #3"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_5
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3081
    monitor-exit v2

    goto/16 :goto_0

    .line 3067
    :catch_0
    move-exception v0

    .line 3068
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v3, "Remote binder has already died."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 3073
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 3074
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3075
    :catch_1
    move-exception v0

    .line 3076
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_4
    const-string v1, "NfcService"

    const-string v3, "Reader mode Binder was never registered."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setRwP2pMode(Z)Z
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 3482
    const/4 v0, 0x1

    return v0
.end method

.method public setSimLocked(Z)V
    .locals 0
    .param p1, "lock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3511
    return-void
.end method

.method public startCoverAuth()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3298
    monitor-enter p0

    .line 3299
    :try_start_0
    # getter for: Lcom/android/nfc/NfcService;->isLedTransaction:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$1900()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/nfc/NfcService;->isFirmwareDown:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3300
    :cond_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    const-string v1, "LedTransaction is working"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    monitor-exit p0

    .line 3312
    :goto_0
    return-object v0

    .line 3303
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3304
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NfcService"

    const-string v1, "Enter : startCoverAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->isTagPresent()Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3307
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "NfcService"

    const-string v1, "The tag is connected so return error code."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    monitor-exit p0

    goto :goto_0

    .line 3317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3310
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    # setter for: Lcom/android/nfc/NfcService;->isAuthTransaction:Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4002(Z)Z

    .line 3312
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->startCoverAuth()[B

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3314
    :cond_6
    const/4 v0, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isAuthTransaction:Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4002(Z)Z

    .line 3315
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public stopCoverAuth()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3333
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3334
    const/4 v0, 0x0

    .line 3335
    .local v0, "stopAuth":Z
    monitor-enter p0

    .line 3337
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3338
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "Enter : stopCoverAuth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->isTagPresent()Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3341
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NfcService"

    const-string v3, "The tag is connected so return false."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3349
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    # setter for: Lcom/android/nfc/NfcService;->isAuthTransaction:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4002(Z)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3355
    :goto_0
    return v1

    .line 3344
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->stopCoverAuth()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 3349
    const/4 v1, 0x0

    :try_start_3
    # setter for: Lcom/android/nfc/NfcService;->isAuthTransaction:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4002(Z)Z

    .line 3351
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3352
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3353
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    :cond_3
    move v1, v0

    .line 3355
    goto :goto_0

    .line 3346
    :cond_4
    :try_start_4
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3349
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    # setter for: Lcom/android/nfc/NfcService;->isAuthTransaction:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4002(Z)Z

    throw v1

    .line 3351
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public transceiveAuthData([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3322
    monitor-enter p0

    .line 3323
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3324
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transceiveAuthData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/nfc/NfcService;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->transceiveAuthData([B)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3327
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 3329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public verifyNfcPermission()V
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2841
    return-void
.end method
