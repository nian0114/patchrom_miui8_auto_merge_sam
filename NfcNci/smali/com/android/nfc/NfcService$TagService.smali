.class final Lcom/android/nfc/NfcService$TagService;
.super Landroid/nfc/INfcTag$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TagService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3590
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcTag$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .locals 1
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->canMakeReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public close(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3593
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3595
    const/4 v0, 0x0

    .line 3597
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3598
    const/16 v1, -0x11

    .line 3612
    :goto_0
    return v1

    .line 3602
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3603
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_1

    .line 3605
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3606
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3607
    const/4 v1, 0x0

    goto :goto_0

    .line 3610
    :cond_1
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NfcService"

    const-string v2, "applyRouting #8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3612
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public connect(II)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 3617
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3619
    const/4 v0, 0x0

    .line 3621
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3622
    const/16 v1, -0x11

    .line 3641
    :cond_0
    :goto_0
    return v1

    .line 3626
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3627
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3631
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3638
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3639
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatNdef(I[B)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 3879
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3884
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3885
    const/16 v1, -0x11

    .line 3897
    :cond_0
    :goto_0
    return v1

    .line 3889
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3890
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3894
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3895
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getExtendedLengthApdusSupported()Z

    move-result v0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getMaxTransceiveLength(I)I

    move-result v0

    return v0
.end method

.method public getTechList(I)[I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3670
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3673
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3682
    :cond_0
    :goto_0
    return-object v1

    .line 3678
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3679
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3680
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3949
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getTimeout(I)I

    move-result v0

    return v0
.end method

.method public isNdef(I)Z
    .locals 4
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3705
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3707
    const/4 v1, 0x0

    .line 3710
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3720
    :cond_0
    :goto_0
    return v2

    .line 3715
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3716
    .restart local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 3717
    .local v0, "ndefInfo":[I
    if-eqz v1, :cond_0

    .line 3720
    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->checkNdef([I)Z

    move-result v2

    goto :goto_0
.end method

.method public isPresent(I)Z
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3687
    const/4 v0, 0x0

    .line 3690
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3700
    :cond_0
    :goto_0
    return v1

    .line 3695
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3696
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3700
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    goto :goto_0
.end method

.method public ndefIsWritable(I)Z
    .locals 1
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ndefMakeReadOnly(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 3855
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3860
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3861
    const/16 v1, -0x11

    .line 3873
    :cond_0
    :goto_0
    return v1

    .line 3865
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3866
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3870
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3871
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .locals 8
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3769
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3774
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3804
    :cond_0
    :goto_0
    return-object v3

    .line 3779
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3781
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3783
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "NfcService"

    const-string v5, "ndefRead::CheckTagConnection.cancel()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->cancel()V

    .line 3787
    :cond_3
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "NfcService"

    const-string v5, "CheckTagConnection.start()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v5, Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    iget-object v6, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    const v7, 0xea60

    invoke-direct {v5, v6, v2, v7}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;-><init>(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;I)V

    iput-object v5, v4, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    .line 3789
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->start()V

    .line 3791
    if-eqz v2, :cond_0

    .line 3792
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v0

    .line 3793
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 3799
    :try_start_0
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 3800
    :catch_0
    move-exception v1

    .line 3801
    .local v1, "e":Landroid/nfc/FormatException;
    goto :goto_0
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .locals 6
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 3809
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3814
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3815
    const/16 v1, -0x11

    .line 3843
    :cond_0
    :goto_0
    return v1

    .line 3819
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3820
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3825
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3827
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NfcService"

    const-string v3, "ndefWrite::CheckTagConnection.cancel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->cancel()V

    .line 3832
    :cond_3
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NfcService"

    const-string v3, "CheckTagConnection.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v3, Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    const v5, 0xea60

    invoke-direct {v3, v4, v0, v5}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;-><init>(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;I)V

    iput-object v3, v2, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    .line 3834
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->start()V

    .line 3838
    if-nez p2, :cond_5

    const/4 v1, -0x8

    goto :goto_0

    .line 3840
    :cond_5
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3841
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 3647
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3649
    const/4 v0, 0x0

    .line 3652
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3653
    const/16 v1, -0x11

    .line 3665
    :cond_0
    :goto_0
    return v1

    .line 3657
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3658
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 3659
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3660
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rediscover(I)Landroid/nfc/Tag;
    .locals 7
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3903
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3905
    const/4 v6, 0x0

    .line 3908
    .local v6, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3931
    :cond_0
    :goto_0
    return-object v0

    .line 3913
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v6, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3914
    .restart local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v6, :cond_0

    .line 3923
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 3924
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 3925
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 3927
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3929
    .local v0, "newTag":Landroid/nfc/Tag;
    goto :goto_0
.end method

.method public resetTimeouts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3956
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 3957
    return-void
.end method

.method public setTimeout(II)I
    .locals 2
    .param p1, "tech"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3936
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3937
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 3938
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 3939
    const/4 v1, 0x0

    .line 3941
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x8

    goto :goto_0
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .locals 10
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 3726
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3728
    const/4 v2, 0x0

    .line 3732
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3764
    :cond_0
    :goto_0
    return-object v4

    .line 3737
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3739
    .restart local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 3740
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->cancel()V

    .line 3742
    :cond_2
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "NfcService"

    const-string v6, "CheckTagConnection.start()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v6, Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    iget-object v7, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    const v8, 0xea60

    invoke-direct {v6, v7, v2, v8}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;-><init>(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;I)V

    iput-object v6, v5, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    .line 3744
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->start()V

    .line 3747
    if-eqz v2, :cond_0

    .line 3749
    array-length v5, p2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcService$TagService;->getMaxTransceiveLength(I)I

    move-result v6

    if-le v5, v6, :cond_4

    .line 3750
    new-instance v5, Landroid/nfc/TransceiveResult;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    move-object v4, v5

    goto :goto_0

    .line 3752
    :cond_4
    new-array v3, v9, [I

    .line 3753
    .local v3, "targetLost":[I
    invoke-interface {v2, p2, p3, v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v0

    .line 3755
    .local v0, "response":[B
    if-eqz v0, :cond_5

    .line 3756
    const/4 v1, 0x0

    .line 3762
    .local v1, "result":I
    :goto_1
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v0}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    goto :goto_0

    .line 3757
    .end local v1    # "result":I
    :cond_5
    const/4 v4, 0x0

    aget v4, v3, v4

    if-ne v4, v9, :cond_6

    .line 3758
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_1

    .line 3760
    .end local v1    # "result":I
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "result":I
    goto :goto_1
.end method
