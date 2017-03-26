.class final Lcom/android/nfc/NfcService$NfcControllerService;
.super Lcom/gsma/services/nfc/INfcController$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcControllerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 6497
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/gsma/services/nfc/INfcController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Lcom/gsma/services/nfc/OffHostService;)I
    .locals 4
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    const/4 v0, -0x5

    const/4 v1, 0x0

    .line 6635
    monitor-enter p0

    .line 6636
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isRoutingTableFull:Z
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$6402(Lcom/android/nfc/NfcService;Z)Z

    .line 6637
    if-nez p1, :cond_0

    .line 6638
    const/4 v0, -0x4

    monitor-exit p0

    .line 6653
    :goto_0
    return v0

    .line 6639
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$6300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->addOrUpdateOffHostService(Lcom/gsma/services/nfc/OffHostService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6640
    monitor-exit p0

    goto :goto_0

    .line 6641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6643
    const-wide/16 v2, 0x190

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6646
    :goto_1
    monitor-enter p0

    .line 6647
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isRoutingTableFull:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$6400(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6648
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isRoutingTableFull:Z
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$6402(Lcom/android/nfc/NfcService;Z)Z

    .line 6649
    const-string v1, "NfcService"

    const-string v2, "routing table is full!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6650
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$6300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)Z

    .line 6651
    monitor-exit p0

    goto :goto_0

    .line 6654
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 6653
    :cond_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v1

    goto :goto_0

    .line 6644
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public defineOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 6577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SIM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eSE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eSIM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SAP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6585
    :cond_0
    const/4 v0, 0x0

    .line 6588
    :goto_0
    return-object v0

    .line 6586
    :cond_1
    new-instance v0, Lcom/gsma/services/nfc/OffHostService;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gsma/services/nfc/OffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6588
    .local v0, "service":Lcom/gsma/services/nfc/OffHostService;
    goto :goto_0
.end method

.method public deleteOffHostService(Ljava/lang/String;Lcom/gsma/services/nfc/OffHostService;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 6594
    monitor-enter p0

    .line 6595
    if-nez p2, :cond_0

    .line 6596
    const/4 v0, -0x4

    :try_start_0
    monitor-exit p0

    .line 6599
    :goto_0
    return v0

    .line 6597
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$6300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6598
    const/4 v0, -0x3

    monitor-exit p0

    goto :goto_0

    .line 6600
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6599
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public disableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I
    .locals 1
    .param p1, "cb"    # Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6571
    const/4 v0, -0x3

    return v0
.end method

.method public enableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I
    .locals 1
    .param p1, "cb"    # Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6564
    const/4 v0, -0x3

    return v0
.end method

.method public enableMultiEvt_transactionReception()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x3

    .line 6659
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "enableMultiEvt_transactionReception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6661
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    invoke-virtual {v2}, Lcom/android/nfc/HciEventControl;->isAllowedForGsma()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    .line 6671
    :cond_1
    :goto_0
    return v1

    .line 6663
    :catch_0
    move-exception v0

    .line 6664
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NfcService"

    const-string v3, "Checking CDF failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6666
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 6667
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NfcService"

    const-string v3, "mHciEventControl is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6670
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    const-string v2, "SIM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/HciEventControl;->enableMultiEvt_transactionReception(Ljava/lang/String;Z)V

    .line 6671
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNfcController(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I
    .locals 10
    .param p1, "cb"    # Lcom/gsma/services/nfc/INfcControllerCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x3

    const/4 v2, 0x0

    .line 6505
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "enableNfcController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6509
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 6510
    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "isNFCEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v9, v0}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 6512
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6513
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6515
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    const-string v3, "isNFCEnabled"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6516
    const-string v0, "NfcService"

    const-string v1, "EDM : nfc policy disabled. can\'t enable it"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6522
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 6551
    :goto_0
    return v0

    .line 6522
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6526
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    const-string v1, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 6527
    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v9, v0}, Lcom/android/nfc/NfcService;->access$2202(Lcom/android/nfc/NfcService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 6529
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6530
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6532
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

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

    if-eqz v0, :cond_3

    .line 6533
    const-string v0, "NfcService"

    const-string v1, "EDM : isNFCStateChangeAllowed is false. can\'t change it"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6539
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    .line 6519
    :catch_0
    move-exception v6

    .line 6520
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6522
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRestrictionCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6539
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6545
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6546
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static {v0, p1}, Lcom/android/nfc/NfcService;->access$5402(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 6547
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v8}, Lcom/android/nfc/NfcService;->sendGsmaPopup(I)V

    :goto_3
    move v0, v8

    .line 6551
    goto/16 :goto_0

    .line 6536
    :catch_1
    move-exception v6

    .line 6537
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6539
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDevSettingCr:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6549
    :cond_5
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/gsma/services/nfc/INfcControllerCallbacks;->onEnableNfcController(Z)V

    goto :goto_3
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableSecureElements(I)[Ljava/lang/String;
    .locals 3
    .param p1, "batteryLevel"    # I

    .prologue
    .line 6716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6718
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->supportUce()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->getHideTerminal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6719
    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6720
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->supportEce()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->getHideTerminal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6721
    const-string v1, "eSE1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6725
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 6734
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6737
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    .line 6725
    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBanner(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceID"    # I

    .prologue
    const/4 v4, 0x0

    .line 6742
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6743
    :cond_0
    const-string v3, "NfcService"

    const-string v5, "packageName is null or resourceID is 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 6763
    :goto_0
    return-object v0

    .line 6746
    :cond_1
    const/4 v0, 0x0

    .line 6748
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 6749
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 6750
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 6751
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "NfcService"

    const-string v5, "NotFoundException"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 6752
    goto :goto_0

    .line 6753
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 6754
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NfcService"

    const-string v5, "NameNotFoundException"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 6755
    goto :goto_0

    .line 6756
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 6757
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "NfcService"

    const-string v5, "OutOfMemoryError"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 6758
    goto :goto_0

    .line 6759
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v1

    .line 6760
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NfcService"

    const-string v5, "Exception"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 6761
    goto :goto_0
.end method

.method public getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6618
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$6300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v0

    return-object v0
.end method

.method public getOffHostServices(Ljava/lang/String;)[Lcom/gsma/services/nfc/OffHostService;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6606
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$6300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->getOffHostServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6608
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/OffHostService;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 6609
    :cond_0
    const/4 v2, 0x0

    .line 6613
    :cond_1
    return-object v2

    .line 6610
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/gsma/services/nfc/OffHostService;

    .line 6611
    .local v2, "services":[Lcom/gsma/services/nfc/OffHostService;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 6612
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/nfc/OffHostService;

    aput-object v3, v2, v0

    .line 6611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getProperty(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    .line 6676
    const/4 v0, 0x0

    .line 6677
    .local v0, "result":Z
    sparse-switch p1, :sswitch_data_0

    .line 6711
    :cond_0
    :goto_0
    return v0

    .line 6679
    :sswitch_0
    const/4 v0, 0x1

    .line 6680
    goto :goto_0

    .line 6682
    :sswitch_1
    const/4 v0, 0x1

    .line 6683
    goto :goto_0

    .line 6685
    :sswitch_2
    const/4 v0, 0x0

    .line 6686
    goto :goto_0

    .line 6688
    :sswitch_3
    const/4 v0, 0x0

    .line 6689
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isNxpChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6690
    const/4 v0, 0x1

    goto :goto_0

    .line 6693
    :sswitch_4
    const/4 v0, 0x1

    .line 6694
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->isSamsungChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6695
    const/4 v0, 0x0

    goto :goto_0

    .line 6698
    :sswitch_5
    const/4 v0, 0x1

    .line 6699
    goto :goto_0

    .line 6701
    :sswitch_6
    const/4 v0, 0x1

    .line 6702
    goto :goto_0

    .line 6704
    :sswitch_7
    const/4 v0, 0x1

    .line 6705
    goto :goto_0

    .line 6707
    :sswitch_8
    const/4 v0, 0x0

    .line 6708
    goto :goto_0

    .line 6677
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_5
        0x50 -> :sswitch_6
        0x90 -> :sswitch_7
        0x91 -> :sswitch_8
    .end sparse-switch
.end method

.method public isCardEmulationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6557
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6500
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcControllerService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    return v0
.end method

.method public setActiveSecureElement(Ljava/lang/String;)I
    .locals 1
    .param p1, "SEName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6630
    const/4 v0, -0x3

    return v0
.end method
