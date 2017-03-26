.class final Lcom/android/nfc/NfcService$MobilePosService;
.super Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MobilePosService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 6769
    iput-object p1, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public selectHost(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6785
    iget-object v4, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 6787
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    const-string v4, "eSE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6788
    iget-object v4, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mMPosMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$6600(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    sget-object v5, Lcom/android/nfc/HciEventControl;->READER_ESE_S:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6798
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkMobilePosPermission()Z
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$6500(Lcom/android/nfc/NfcService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6808
    :goto_1
    return v2

    .line 6789
    :cond_1
    :try_start_1
    const-string v4, "SIM"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "UICC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6790
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mMPosMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$6600(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    sget-object v5, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6791
    :catch_0
    move-exception v0

    .line 6792
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "NfcService"

    const-string v4, "mHciEventControl is null"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6794
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6795
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NfcService"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6799
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPOS - select host type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6800
    :cond_4
    const-string v4, "eSE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6801
    iget-object v4, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSSelectUiccHost(Z)Z

    :goto_2
    move v2, v3

    .line 6808
    goto :goto_1

    .line 6802
    :cond_5
    const-string v4, "SIM"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "UICC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6803
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSSelectUiccHost(Z)Z

    goto :goto_2

    .line 6805
    :cond_7
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPOS - select host type - unknown type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setDedicatedReaderMode(Z)Z
    .locals 4
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6813
    iget-object v2, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkMobilePosPermission()Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$6500(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6828
    :goto_0
    return v0

    .line 6814
    :cond_0
    if-eqz p1, :cond_3

    .line 6815
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NfcService"

    const-string v3, "mPOS - start dedicated reader mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6816
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSDedicatedMode(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6817
    iget-object v0, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->setmPOSMode(Z)V
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$6100(Lcom/android/nfc/NfcService;Z)V

    .line 6818
    const-string v0, "NfcService"

    const-string v2, "mPOS - start dedicated reader mode success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    .line 6828
    goto :goto_0

    .line 6820
    :cond_2
    const-string v1, "NfcService"

    const-string v2, "mPOS - start dedicated reader mode fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6824
    :cond_3
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NfcService"

    const-string v3, "mPOS - stop dedicated reader mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6825
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSDedicatedMode(Z)Z

    .line 6826
    iget-object v2, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->setmPOSMode(Z)V
    invoke-static {v2, v0}, Lcom/android/nfc/NfcService;->access$6100(Lcom/android/nfc/NfcService;Z)V

    goto :goto_1
.end method

.method public setOnCallbacks(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z
    .locals 2
    .param p1, "callbacks"    # Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6772
    iget-object v0, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkMobilePosPermission()Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$6500(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6780
    :goto_0
    return v0

    .line 6773
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    invoke-static {v0, p1}, Lcom/android/nfc/NfcService;->access$5202(Lcom/android/nfc/NfcService;Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    .line 6774
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    .line 6775
    if-eqz p1, :cond_2

    .line 6776
    const-string v0, "NfcService"

    const-string v1, "register mPOS callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6778
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "clear mPOS callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setRfPower(Z)Z
    .locals 2
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6833
    iget-object v0, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkMobilePosPermission()Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$6500(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6841
    :goto_0
    return v0

    .line 6834
    :cond_0
    if-eqz p1, :cond_2

    .line 6835
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    const-string v1, "mPOS - RF power on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6841
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6838
    :cond_2
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    const-string v1, "mPOS - RF power off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTestMode(I)Z
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6846
    iget-object v0, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # invokes: Lcom/android/nfc/NfcService;->checkMobilePosPermission()Z
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$6500(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6849
    :goto_0
    return v0

    .line 6847
    :cond_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPOS - set test mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6848
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$MobilePosService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->SLSI_mPOSConfigforTest(I)Z

    .line 6849
    const/4 v0, 0x1

    goto :goto_0
.end method
