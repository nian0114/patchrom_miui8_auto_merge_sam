.class Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 3504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3505
    iput-object p1, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3506
    return-void
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6604
    if-eqz p1, :cond_0

    .line 6605
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6606
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6611
    :goto_0
    if-eqz p2, :cond_1

    .line 6612
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6613
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6618
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6619
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6626
    return-void

    .line 6609
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6623
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 6616
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7530
    if-eqz p1, :cond_0

    .line 7531
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7532
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7537
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7538
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xac

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7543
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7546
    return v2

    .line 7535
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7543
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7540
    goto :goto_1
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6414
    if-eqz p1, :cond_0

    .line 6415
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6416
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6421
    :goto_0
    if-eqz p2, :cond_1

    .line 6422
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6423
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6428
    :goto_1
    if-eqz p3, :cond_2

    .line 6429
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6430
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6435
    :goto_2
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6442
    return-void

    .line 6419
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6439
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 6426
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 6433
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 3509
    iget-object v0, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5928
    if-eqz p1, :cond_0

    .line 5929
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5930
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5935
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5936
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5937
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5939
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5942
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5945
    return v2

    .line 5933
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5942
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5939
    goto :goto_1
.end method

.method public choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "aliasCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6345
    if-eqz p2, :cond_0

    .line 6346
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6347
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6352
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6353
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6354
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6361
    return-void

    .line 6350
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6358
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6633
    if-eqz p1, :cond_0

    .line 6634
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6635
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6640
    :goto_0
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6647
    return-void

    .line 6638
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6644
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7709
    if-eqz p1, :cond_0

    .line 7710
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7711
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7716
    :goto_0
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7723
    return-void

    .line 7714
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7720
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5088
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5092
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5093
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5099
    return-void

    .line 5096
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6449
    if-eqz p1, :cond_0

    .line 6450
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6451
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6456
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6457
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6464
    return-void

    .line 6454
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6461
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5216
    if-eqz p1, :cond_0

    .line 5217
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5218
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5223
    :goto_0
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5230
    return-void

    .line 5221
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5227
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public copyAlternativeToActivePasswordState(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6328
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6335
    return-void

    .line 6332
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwnerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6873
    if-eqz p1, :cond_0

    .line 6874
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6875
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6880
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6881
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6882
    if-eqz p4, :cond_1

    .line 6883
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6884
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6889
    :goto_1
    if-eqz p5, :cond_2

    .line 6890
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6891
    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6896
    :goto_2
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 6899
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6906
    .local v2, "_result":Landroid/os/UserHandle;
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6909
    return-object v2

    .line 6878
    .end local v2    # "_result":Landroid/os/UserHandle;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6906
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 6887
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 6894
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 6902
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/UserHandle;
    goto :goto_3
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6842
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6843
    if-eqz p1, :cond_0

    .line 6844
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6845
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6850
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6851
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6853
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 6854
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6861
    .local v2, "_result":Landroid/os/UserHandle;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6864
    return-object v2

    .line 6848
    .end local v2    # "_result":Landroid/os/UserHandle;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6861
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 6857
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/UserHandle;
    goto :goto_1
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6979
    if-eqz p1, :cond_0

    .line 6980
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6981
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6986
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6987
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6994
    return-void

    .line 6984
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6991
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7002
    if-eqz p1, :cond_0

    .line 7003
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7004
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7009
    :goto_0
    if-eqz p2, :cond_1

    .line 7010
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7011
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7016
    :goto_1
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7018
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 7021
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7024
    return v2

    .line 7007
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7021
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 7014
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5301
    if-eqz p1, :cond_0

    .line 5302
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5303
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5308
    :goto_0
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5315
    return-void

    .line 5306
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5312
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7056
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7058
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7061
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7064
    return-object v2

    .line 7061
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7074
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7076
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7079
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7082
    return-object v2

    .line 7079
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4853
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4854
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4855
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4857
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4860
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4863
    return-object v2

    .line 4860
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6134
    if-eqz p1, :cond_0

    .line 6135
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6136
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6141
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6142
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6147
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6150
    return-object v2

    .line 6139
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6147
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5759
    if-eqz p1, :cond_0

    .line 5760
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5761
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5766
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5767
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5772
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5775
    return v2

    .line 5764
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5772
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5662
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5663
    if-eqz p1, :cond_0

    .line 5664
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5665
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5670
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5671
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5673
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5676
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5679
    return v2

    .line 5668
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5676
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5673
    goto :goto_1
.end method

.method public getAllowCamera(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5855
    if-eqz p1, :cond_0

    .line 5856
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5857
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5862
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5863
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5865
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5868
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5871
    return v2

    .line 5860
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5868
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5865
    goto :goto_1
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5807
    if-eqz p1, :cond_0

    .line 5808
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5809
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5814
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5815
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x65

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5820
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5823
    return v2

    .line 5812
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5820
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5817
    goto :goto_1
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5707
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5711
    if-eqz p1, :cond_0

    .line 5712
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5713
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5718
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5719
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x61

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5721
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5724
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5727
    return v2

    .line 5716
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5724
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5721
    goto :goto_1
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5903
    if-eqz p1, :cond_0

    .line 5904
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5905
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5910
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5911
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5913
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5916
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5919
    return v2

    .line 5908
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5916
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5913
    goto :goto_1
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5615
    if-eqz p1, :cond_0

    .line 5616
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5617
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5622
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5623
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5624
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5625
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5628
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5631
    return v2

    .line 5620
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5628
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5625
    goto :goto_1
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5423
    if-eqz p1, :cond_0

    .line 5424
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5425
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5430
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5431
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x55

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5433
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5436
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5439
    return v2

    .line 5428
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5436
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5433
    goto :goto_1
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5566
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5567
    if-eqz p1, :cond_0

    .line 5568
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5569
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5574
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5575
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5580
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5583
    return v2

    .line 5572
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5580
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5577
    goto :goto_1
.end method

.method public getAllowUnsignedApp(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6230
    if-eqz p1, :cond_0

    .line 6231
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6232
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6237
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6238
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x77

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 6243
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6246
    return v2

    .line 6235
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6243
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 6240
    goto :goto_1
.end method

.method public getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6278
    if-eqz p1, :cond_0

    .line 6279
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6280
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6285
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6286
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x79

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 6291
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6294
    return v2

    .line 6283
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6291
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 6288
    goto :goto_1
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5519
    if-eqz p1, :cond_0

    .line 5520
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5521
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5526
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5527
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x59

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5532
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5535
    return v2

    .line 5524
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5532
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5529
    goto :goto_1
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6501
    if-eqz p1, :cond_0

    .line 6502
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6503
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6508
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6509
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6511
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 6512
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6519
    .local v2, "_result":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6522
    return-object v2

    .line 6506
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6519
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 6515
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public getAutoTimeRequired()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7626
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 7631
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7634
    return v2

    .line 7631
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6182
    if-eqz p1, :cond_0

    .line 6183
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6184
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6189
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6190
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6192
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6195
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6198
    return-object v2

    .line 6187
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6195
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7421
    if-eqz p1, :cond_0

    .line 7422
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7423
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7428
    :goto_0
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7433
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7436
    return v2

    .line 7426
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7433
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7430
    goto :goto_1
.end method

.method public getBluetoothContactSharingDisabledForUser(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7446
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7447
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7448
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 7451
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7454
    return v2

    .line 7451
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4687
    if-eqz p1, :cond_0

    .line 4688
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4689
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4694
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4695
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x33

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4696
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4697
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4700
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4703
    return v2

    .line 4692
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4700
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4697
    goto :goto_1
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6391
    if-eqz p1, :cond_0

    .line 6392
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6393
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6398
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6400
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6403
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6406
    return-object v2

    .line 6396
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6403
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7334
    if-eqz p1, :cond_0

    .line 7335
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7336
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7341
    :goto_0
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7346
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7349
    return v2

    .line 7339
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7346
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7343
    goto :goto_1
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7359
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 7364
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7367
    return v2

    .line 7364
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7580
    if-eqz p1, :cond_0

    .line 7581
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7582
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7587
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7589
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7592
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7595
    return-object v2

    .line 7585
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7592
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4036
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4037
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4041
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4044
    return v2

    .line 4041
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDeviceInitializer()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7762
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7763
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7764
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7767
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7770
    return-object v2

    .line 7767
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7779
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7780
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7781
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 7782
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7789
    .local v2, "_result":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7792
    return-object v2

    .line 7785
    .end local v2    # "_result":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/ComponentName;
    goto :goto_0

    .line 7789
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5058
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5060
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5063
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5066
    return-object v2

    .line 5063
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5074
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5075
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5077
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5080
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5083
    return-object v2

    .line 5080
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7925
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7929
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7930
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7931
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 7934
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7937
    return v2

    .line 7934
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4246
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4247
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4249
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4256
    .local v2, "_result":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4259
    return-object v2

    .line 4252
    .end local v2    # "_result":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/ComponentName;
    goto :goto_0

    .line 4256
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3513
    const-string v0, "android.app.admin.IDevicePolicyManager"

    return-object v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4777
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4781
    if-eqz p1, :cond_0

    .line 4782
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4783
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4788
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4789
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4794
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4797
    return v2

    .line 4786
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4794
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7113
    if-eqz p1, :cond_0

    .line 7114
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7115
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7120
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7122
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7125
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7128
    return-object v2

    .line 7118
    .end local v2    # "_result":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7125
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4092
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4093
    if-eqz p1, :cond_0

    .line 4094
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4095
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4100
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4101
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4106
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4109
    return v2

    .line 4098
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4106
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4159
    if-eqz p1, :cond_0

    .line 4160
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4161
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4166
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4169
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4172
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4175
    return-wide v2

    .line 4164
    .end local v2    # "_result":J
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4172
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4613
    if-eqz p1, :cond_0

    .line 4614
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4615
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4620
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4621
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x30

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4626
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4629
    return v2

    .line 4618
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4626
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4623
    goto :goto_1
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8073
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8076
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8077
    if-eqz p1, :cond_0

    .line 8078
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8079
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8084
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8086
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 8089
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8092
    return-object v2

    .line 8082
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8089
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3992
    if-eqz p1, :cond_0

    .line 3993
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3994
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3999
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4000
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4001
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4002
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4005
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4008
    return-wide v2

    .line 3997
    .end local v2    # "_result":J
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4005
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3967
    if-eqz p1, :cond_0

    .line 3968
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3969
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3974
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3975
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3977
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3980
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3983
    return-wide v2

    .line 3972
    .end local v2    # "_result":J
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3980
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3920
    if-eqz p1, :cond_0

    .line 3921
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3922
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3927
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3928
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3930
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3933
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3936
    return v2

    .line 3925
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3933
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3591
    if-eqz p1, :cond_0

    .line 3592
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3593
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3598
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3599
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3601
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3604
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3607
    return v2

    .line 3596
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3604
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3732
    if-eqz p1, :cond_0

    .line 3733
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3734
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3739
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3740
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3745
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    return v2

    .line 3737
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3745
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3685
    if-eqz p1, :cond_0

    .line 3686
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3687
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3692
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3693
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3698
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    return v2

    .line 3690
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3698
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3873
    if-eqz p1, :cond_0

    .line 3874
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3875
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3880
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3881
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3883
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3886
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3889
    return v2

    .line 3878
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3886
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3779
    if-eqz p1, :cond_0

    .line 3780
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3786
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3787
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3792
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3795
    return v2

    .line 3784
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3792
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3826
    if-eqz p1, :cond_0

    .line 3827
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3828
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3833
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3834
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3839
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3842
    return v2

    .line 3831
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3839
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3638
    if-eqz p1, :cond_0

    .line 3639
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3640
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3645
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3646
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3648
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3651
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3654
    return v2

    .line 3643
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3651
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3544
    if-eqz p1, :cond_0

    .line 3545
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3546
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3551
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3552
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3557
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3560
    return v2

    .line 3549
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3557
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5371
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5375
    if-eqz p1, :cond_0

    .line 5376
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5377
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5382
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5383
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x53

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5388
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5391
    return v2

    .line 5380
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5388
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5385
    goto :goto_1
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8030
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8034
    if-eqz p1, :cond_0

    .line 8035
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8036
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8041
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8042
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8043
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8045
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 8048
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8051
    return v2

    .line 8039
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8048
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7979
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7982
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7983
    if-eqz p1, :cond_0

    .line 7984
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7985
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7990
    :goto_0
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7992
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 7995
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7998
    return v2

    .line 7988
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7995
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6679
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6680
    if-eqz p1, :cond_0

    .line 6681
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6682
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6687
    :goto_0
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x89

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6689
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 6690
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6693
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6696
    return-object v2

    .line 6685
    .end local v2    # "_result":Ljava/util/List;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6693
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6704
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6706
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6707
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6708
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 6709
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6712
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6715
    return-object v2

    .line 6712
    .end local v2    # "_result":Ljava/util/List;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6748
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6749
    if-eqz p1, :cond_0

    .line 6750
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6751
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6756
    :goto_0
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6757
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6758
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 6759
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6762
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6765
    return-object v2

    .line 6754
    .end local v2    # "_result":Ljava/util/List;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6762
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6774
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6776
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 6777
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6780
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6783
    return-object v2

    .line 6780
    .end local v2    # "_result":Ljava/util/List;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5129
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5134
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5136
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5137
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5144
    .local v2, "_result":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5147
    return-object v2

    .line 5140
    .end local v2    # "_result":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/ComponentName;
    goto :goto_0

    .line 5144
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5157
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5159
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5162
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5165
    return-object v2

    .line 5162
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4052
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4054
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4056
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4059
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4062
    return v2

    .line 4059
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "fieldname"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4539
    if-eqz p1, :cond_0

    .line 4540
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4541
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4546
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4547
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4548
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4550
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4553
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4556
    return-object v2

    .line 4544
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4553
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4890
    if-eqz p1, :cond_0

    .line 4891
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4892
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4897
    :goto_0
    if-eqz p2, :cond_1

    .line 4898
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4899
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4904
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4905
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4906
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4912
    return-void

    .line 4895
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4909
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 4902
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5977
    if-eqz p1, :cond_0

    .line 5978
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5979
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5984
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5985
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5986
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5987
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5990
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5993
    return v2

    .line 5982
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5990
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5987
    goto :goto_1
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6560
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6563
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6570
    .local v2, "_result":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6573
    return-object v2

    .line 6566
    .end local v2    # "_result":Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/ComponentName;
    goto :goto_0

    .line 6570
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4387
    if-eqz p1, :cond_0

    .line 4388
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4389
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4394
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4395
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x27

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4397
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4400
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4403
    return v2

    .line 4392
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4400
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4397
    goto :goto_1
.end method

.method public getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4437
    if-eqz p1, :cond_0

    .line 4438
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4439
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4444
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4445
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4450
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4453
    return v2

    .line 4442
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4450
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4412
    if-eqz p1, :cond_0

    .line 4413
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4414
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4419
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4420
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x28

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4425
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4428
    return v2

    .line 4417
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4425
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4422
    goto :goto_1
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4730
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4733
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4734
    if-eqz p1, :cond_0

    .line 4735
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4736
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4741
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4742
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x35

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4744
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4747
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4750
    return v2

    .line 4739
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4747
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4744
    goto :goto_1
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5471
    if-eqz p1, :cond_0

    .line 5472
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5473
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5478
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5479
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x57

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5481
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5484
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5487
    return v2

    .line 5476
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5484
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5481
    goto :goto_1
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4321
    if-eqz p1, :cond_0

    .line 4322
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4323
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4328
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4329
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x24

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4331
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4334
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4337
    return v2

    .line 4326
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4334
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4331
    goto :goto_1
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4347
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4352
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4355
    return v2

    .line 4352
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7857
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xba

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 7860
    sget-object v3, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7867
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7870
    return-object v2

    .line 7863
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 7867
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7498
    if-eqz p1, :cond_0

    .line 7499
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7500
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7505
    :goto_0
    if-eqz p2, :cond_1

    .line 7506
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7507
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7512
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7513
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7515
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7518
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7521
    return-object v2

    .line 7503
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7518
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 7510
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 7
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4942
    if-eqz p1, :cond_0

    .line 4943
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4944
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4949
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4950
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4951
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4952
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4956
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4959
    return v2

    .line 4947
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4956
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4953
    goto :goto_1
.end method

.method public hasUserSetupCompleted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5238
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5243
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5246
    return v2

    .line 5243
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5255
    if-eqz p1, :cond_0

    .line 5256
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5257
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5262
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5263
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x4e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5268
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5271
    return v2

    .line 5260
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5268
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5265
    goto :goto_1
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKeyBuffer"    # [B
    .param p3, "certBuffer"    # [B
    .param p4, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5323
    if-eqz p1, :cond_0

    .line 5324
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5325
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5330
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5332
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5333
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x51

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5338
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5341
    return v2

    .line 5328
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5338
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5335
    goto :goto_1
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4018
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4020
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4023
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4026
    return v2

    .line 4023
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4829
    if-eqz p1, :cond_0

    .line 4830
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4831
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4836
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4837
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x39

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4839
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4842
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4845
    return v2

    .line 4834
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4842
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4839
    goto :goto_1
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6817
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6818
    if-eqz p1, :cond_0

    .line 6819
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6820
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6825
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6826
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6828
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 6831
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6834
    return v2

    .line 6823
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6831
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 6828
    goto :goto_1
.end method

.method public isDeviceInitializer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7691
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7693
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7695
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 7698
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7701
    return v2

    .line 7698
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5039
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5040
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5041
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5043
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5046
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5049
    return v2

    .line 5046
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isEncryptedWithForceEncrypt(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4638
    if-eqz p1, :cond_0

    .line 4639
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4640
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4645
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4646
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x31

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4648
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4651
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4654
    return v2

    .line 4643
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4651
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4648
    goto :goto_1
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7138
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 7143
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7146
    return v2

    .line 7143
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7223
    if-eqz p1, :cond_0

    .line 7224
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7225
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7230
    :goto_0
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7235
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7238
    return v2

    .line 7228
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7235
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7232
    goto :goto_1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7643
    if-eqz p1, :cond_0

    .line 7644
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7645
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7650
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7651
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7653
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7656
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7659
    return v2

    .line 7648
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7656
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7653
    goto :goto_1
.end method

.method public isSupportFingerprintForODE(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4565
    if-eqz p1, :cond_0

    .line 4566
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4567
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4572
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4573
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4575
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4578
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4581
    return v2

    .line 4570
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4578
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4575
    goto :goto_1
.end method

.method public isSupportTrustZoneForODE(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4462
    if-eqz p1, :cond_0

    .line 4463
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4464
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4469
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4470
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4475
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4478
    return v2

    .line 4467
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4475
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4472
    goto :goto_1
.end method

.method public isSupportTrustedBootForODE(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4487
    if-eqz p1, :cond_0

    .line 4488
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4489
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4494
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4495
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4500
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4503
    return v2

    .line 4492
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4500
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4497
    goto :goto_1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7283
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7287
    if-eqz p1, :cond_0

    .line 7288
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7289
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7294
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7295
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7300
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7303
    return v2

    .line 7292
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7300
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7297
    goto :goto_1
.end method

.method public lockNow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4183
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4190
    return-void

    .line 4187
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifyChanges(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6039
    if-eqz p1, :cond_0

    .line 6040
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6041
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6046
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6047
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6048
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6055
    return-void

    .line 6044
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6052
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 6046
    goto :goto_1
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 7242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7246
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7248
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7249
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7256
    return-void

    .line 7253
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 5
    .param p1, "updateReceivedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7945
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7946
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7953
    return-void

    .line 7950
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4873
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4874
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4875
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4879
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4882
    return v2

    .line 4879
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8062
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8063
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8069
    return-void

    .line 8066
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public recoverPassword(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6002
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6009
    return-void

    .line 6006
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4918
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4919
    if-eqz p1, :cond_0

    .line 4920
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4921
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4926
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4927
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4934
    return-void

    .line 4924
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4931
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7555
    if-eqz p1, :cond_0

    .line 7556
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7557
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7562
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7563
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xad

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7568
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7571
    return v2

    .line 7560
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7568
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7565
    goto :goto_1
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6914
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6918
    if-eqz p1, :cond_0

    .line 6919
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6920
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6925
    :goto_0
    if-eqz p2, :cond_1

    .line 6926
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6927
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6932
    :goto_1
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x92

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 6937
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6940
    return v2

    .line 6923
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6937
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 6930
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6934
    goto :goto_2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4991
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4998
    return-void

    .line 4995
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5006
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5013
    return-void

    .line 5010
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4117
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4120
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4122
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4125
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4128
    return v2

    .line 4125
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public resetPasswordMDM(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 8349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8357
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8359
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 8362
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8365
    return v2

    .line 8362
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public satisfyFIPSPassword(I)Z
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4368
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4370
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4373
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4376
    return v2

    .line 4373
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7031
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7032
    if-eqz p1, :cond_0

    .line 7033
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7034
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7039
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7040
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7041
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7048
    return-void

    .line 7037
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7045
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 7040
    goto :goto_1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4805
    if-eqz p1, :cond_0

    .line 4806
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4807
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4812
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4813
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4814
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    return-void

    .line 4810
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4818
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 4812
    goto :goto_1
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4969
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4970
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4971
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4972
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4973
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4974
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4975
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4976
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4983
    return-void

    .line 4980
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setActivePasswordStateForEAS(IIIIIIIII)V
    .locals 5
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6085
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6086
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6087
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6088
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6089
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6090
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6091
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6092
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6093
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6100
    return-void

    .line 6097
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6059
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6062
    if-eqz p1, :cond_0

    .line 6063
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6064
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6069
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6070
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6077
    return-void

    .line 6067
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6074
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAllowAppListThirdParty(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6110
    if-eqz p1, :cond_0

    .line 6111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6112
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6117
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6118
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6119
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6126
    return-void

    .line 6115
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6123
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "size"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5735
    if-eqz p1, :cond_0

    .line 5736
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5737
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5742
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5743
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5744
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5751
    return-void

    .line 5740
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5748
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5639
    if-eqz p1, :cond_0

    .line 5640
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5641
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5646
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5647
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5648
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5655
    return-void

    .line 5644
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5652
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5646
    goto :goto_1
.end method

.method public setAllowCamera(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5831
    if-eqz p1, :cond_0

    .line 5832
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5833
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5838
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5839
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5840
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5847
    return-void

    .line 5836
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5844
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5838
    goto :goto_1
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5783
    if-eqz p1, :cond_0

    .line 5784
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5785
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5790
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5791
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5792
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5799
    return-void

    .line 5788
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5796
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5790
    goto :goto_1
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5684
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5687
    if-eqz p1, :cond_0

    .line 5688
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5689
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5694
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5695
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5696
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5703
    return-void

    .line 5692
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5700
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5694
    goto :goto_1
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5876
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5879
    if-eqz p1, :cond_0

    .line 5880
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5881
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5886
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5888
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5895
    return-void

    .line 5884
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5892
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5886
    goto :goto_1
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5591
    if-eqz p1, :cond_0

    .line 5592
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5593
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5598
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5599
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5600
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5607
    return-void

    .line 5596
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5604
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5598
    goto :goto_1
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5399
    if-eqz p1, :cond_0

    .line 5400
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5401
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5406
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5407
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5408
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5415
    return-void

    .line 5404
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5412
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5406
    goto :goto_1
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5543
    if-eqz p1, :cond_0

    .line 5544
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5545
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5550
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5551
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5552
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5559
    return-void

    .line 5548
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5556
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5550
    goto :goto_1
.end method

.method public setAllowUnsignedApp(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6206
    if-eqz p1, :cond_0

    .line 6207
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6208
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6213
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6214
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6215
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6222
    return-void

    .line 6211
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6219
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 6213
    goto :goto_1
.end method

.method public setAllowUnsignedInstallationPkg(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6254
    if-eqz p1, :cond_0

    .line 6255
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6256
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6261
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6262
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6263
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6270
    return-void

    .line 6259
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6267
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 6261
    goto :goto_1
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5495
    if-eqz p1, :cond_0

    .line 5496
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5497
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5502
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5503
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5504
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5505
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5511
    return-void

    .line 5500
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5508
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5502
    goto :goto_1
.end method

.method public setAlternativePasswordState(IIIIIIII)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "letters"    # I
    .param p3, "uppercase"    # I
    .param p4, "lowercase"    # I
    .param p5, "numbers"    # I
    .param p6, "symbols"    # I
    .param p7, "nonletter"    # I
    .param p8, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6306
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6307
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6308
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6309
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6310
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6311
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6312
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6313
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6320
    return-void

    .line 6317
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6792
    if-eqz p1, :cond_0

    .line 6793
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6794
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6799
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6800
    if-eqz p3, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6801
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6803
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 6806
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    return v2

    .line 6797
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6806
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v4, v3

    .line 6800
    goto :goto_1

    :cond_2
    move v2, v3

    .line 6803
    goto :goto_2
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6471
    if-eqz p1, :cond_0

    .line 6472
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6473
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6478
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6479
    if-eqz p3, :cond_1

    .line 6480
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6481
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6486
    :goto_1
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6493
    return-void

    .line 6476
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6490
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 6484
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7603
    if-eqz p1, :cond_0

    .line 7604
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7605
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7610
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7611
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7618
    return-void

    .line 7608
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7615
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 7610
    goto :goto_1
.end method

.method public setBlockListInRom(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6158
    if-eqz p1, :cond_0

    .line 6159
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6160
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6165
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6166
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6167
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6174
    return-void

    .line 6163
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6171
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7398
    if-eqz p1, :cond_0

    .line 7399
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7400
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7405
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7406
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7413
    return-void

    .line 7403
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7410
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 7405
    goto :goto_1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4664
    if-eqz p1, :cond_0

    .line 4665
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4666
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4671
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4672
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4673
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4679
    return-void

    .line 4669
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4676
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 4671
    goto :goto_1
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6368
    if-eqz p1, :cond_0

    .line 6369
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6370
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6375
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6376
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6383
    return-void

    .line 6373
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6380
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7311
    if-eqz p1, :cond_0

    .line 7312
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7313
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7318
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7319
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7326
    return-void

    .line 7316
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7323
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 7318
    goto :goto_1
.end method

.method public setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "initializer"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7731
    if-eqz p1, :cond_0

    .line 7732
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7733
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7738
    :goto_0
    if-eqz p2, :cond_1

    .line 7739
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7740
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7745
    :goto_1
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7746
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 7750
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7753
    return v2

    .line 7736
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7750
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 7743
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 7747
    goto :goto_2
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5023
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5024
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5028
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5031
    return v2

    .line 5028
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4214
    if-eqz p1, :cond_0

    .line 4215
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4216
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4221
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4222
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4223
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 4226
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4233
    .local v2, "_result":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4236
    return-object v2

    .line 4219
    .end local v2    # "_result":Landroid/content/ComponentName;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4233
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 4229
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/ComponentName;
    goto :goto_1
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7154
    if-eqz p1, :cond_0

    .line 7155
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7156
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7161
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7162
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7163
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7170
    return-void

    .line 7159
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7167
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7879
    if-eqz p1, :cond_0

    .line 7880
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7881
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7886
    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7887
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 7892
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7895
    return v2

    .line 7884
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7892
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v4, v3

    .line 7886
    goto :goto_1

    :cond_2
    move v2, v3

    .line 7889
    goto :goto_2
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4758
    if-eqz p1, :cond_0

    .line 4759
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4760
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4765
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4766
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4773
    return-void

    .line 4763
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4770
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8396
    if-eqz p1, :cond_0

    .line 8397
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8398
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8403
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8404
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8405
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8412
    return-void

    .line 8401
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8409
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7090
    if-eqz p1, :cond_0

    .line 7091
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7092
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7097
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7098
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7105
    return-void

    .line 7095
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7102
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7200
    if-eqz p1, :cond_0

    .line 7201
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7202
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7207
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7208
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7215
    return-void

    .line 7205
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7212
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 7207
    goto :goto_1
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4070
    if-eqz p1, :cond_0

    .line 4071
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4072
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4077
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4078
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4085
    return-void

    .line 4075
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4082
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8330
    if-eqz p1, :cond_0

    .line 8331
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8332
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8337
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8338
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8339
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8346
    return-void

    .line 8335
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8343
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4136
    if-eqz p1, :cond_0

    .line 4137
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4138
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4143
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4144
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4151
    return-void

    .line 4141
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4148
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8373
    if-eqz p1, :cond_0

    .line 8374
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8375
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8380
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 8381
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8382
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8389
    return-void

    .line 8378
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8386
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4589
    if-eqz p1, :cond_0

    .line 4590
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4591
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4596
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4597
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4598
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4605
    return-void

    .line 4594
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4602
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 4596
    goto :goto_1
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3944
    if-eqz p1, :cond_0

    .line 3945
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3946
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3951
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3952
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3959
    return-void

    .line 3949
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3956
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8307
    if-eqz p1, :cond_0

    .line 8308
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8309
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8314
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 8315
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8316
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8323
    return-void

    .line 8312
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8320
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3897
    if-eqz p1, :cond_0

    .line 3898
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3899
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3904
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3905
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3906
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3912
    return-void

    .line 3902
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3909
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8284
    if-eqz p1, :cond_0

    .line 8285
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8286
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8291
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8292
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8293
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8300
    return-void

    .line 8289
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8297
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3568
    if-eqz p1, :cond_0

    .line 3569
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3570
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3575
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3583
    return-void

    .line 3573
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3580
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8123
    if-eqz p1, :cond_0

    .line 8124
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8125
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8130
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8131
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8132
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8139
    return-void

    .line 8128
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8136
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3709
    if-eqz p1, :cond_0

    .line 3710
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3711
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3716
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3717
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3724
    return-void

    .line 3714
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3721
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8192
    if-eqz p1, :cond_0

    .line 8193
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8194
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8199
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8200
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8201
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8208
    return-void

    .line 8197
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8205
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3662
    if-eqz p1, :cond_0

    .line 3663
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3664
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3669
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3670
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3677
    return-void

    .line 3667
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3674
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8169
    if-eqz p1, :cond_0

    .line 8170
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8171
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8176
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8178
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8179
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8185
    return-void

    .line 8174
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8182
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3850
    if-eqz p1, :cond_0

    .line 3851
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3852
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3857
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3858
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3859
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3865
    return-void

    .line 3855
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3862
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8261
    if-eqz p1, :cond_0

    .line 8262
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8263
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8268
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8270
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8277
    return-void

    .line 8266
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8274
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3756
    if-eqz p1, :cond_0

    .line 3757
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3758
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3763
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3771
    return-void

    .line 3761
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3768
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8215
    if-eqz p1, :cond_0

    .line 8216
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8217
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8222
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8223
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8224
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8231
    return-void

    .line 8220
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8228
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3800
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3802
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3803
    if-eqz p1, :cond_0

    .line 3804
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3805
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3810
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3818
    return-void

    .line 3808
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3815
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8238
    if-eqz p1, :cond_0

    .line 8239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8240
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8245
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8246
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8247
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8254
    return-void

    .line 8243
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8251
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3615
    if-eqz p1, :cond_0

    .line 3616
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3617
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3622
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3623
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3630
    return-void

    .line 3620
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3627
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8146
    if-eqz p1, :cond_0

    .line 8147
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8148
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8153
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8154
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8155
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8162
    return-void

    .line 8151
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8159
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3521
    if-eqz p1, :cond_0

    .line 3522
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3523
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3528
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3529
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3536
    return-void

    .line 3526
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3533
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8100
    if-eqz p1, :cond_0

    .line 8101
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8102
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8107
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8108
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8109
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8116
    return-void

    .line 8105
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8113
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5351
    if-eqz p1, :cond_0

    .line 5352
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5353
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5358
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5360
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5367
    return-void

    .line 5356
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5364
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5358
    goto :goto_1
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8003
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8006
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8007
    if-eqz p1, :cond_0

    .line 8008
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8009
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8014
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8015
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8016
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8017
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 8022
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8025
    return v2

    .line 8012
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8022
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 8019
    goto :goto_1
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7960
    if-eqz p1, :cond_0

    .line 7961
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7962
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7967
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7968
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7975
    return-void

    .line 7965
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7972
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6651
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6655
    if-eqz p1, :cond_0

    .line 6656
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6657
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6662
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 6663
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x88

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6665
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 6668
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6671
    return v2

    .line 6660
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6668
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 6665
    goto :goto_1
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6724
    if-eqz p1, :cond_0

    .line 6725
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6726
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6731
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 6732
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 6737
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6740
    return v2

    .line 6729
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6737
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 6734
    goto :goto_1
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5173
    if-eqz p1, :cond_0

    .line 5174
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5175
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5180
    :goto_0
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5187
    return-void

    .line 5178
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5184
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5194
    if-eqz p1, :cond_0

    .line 5195
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5196
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5201
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5202
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5209
    return-void

    .line 5199
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5206
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5107
    if-eqz p1, :cond_0

    .line 5108
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5109
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5114
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5115
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5116
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x47

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5121
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5124
    return v2

    .line 5112
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5121
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5118
    goto :goto_1
.end method

.method public setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "fieldname"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4512
    if-eqz p1, :cond_0

    .line 4513
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4514
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4519
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4520
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4521
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4522
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4527
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4530
    return v2

    .line 4517
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4527
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 4524
    goto :goto_1
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4267
    if-eqz p1, :cond_0

    .line 4268
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4269
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4274
    :goto_0
    if-eqz p2, :cond_1

    .line 4275
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4276
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4281
    :goto_1
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4288
    return-void

    .line 4272
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4285
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 4279
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6016
    if-eqz p1, :cond_0

    .line 6017
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6018
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6023
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6024
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6025
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6032
    return-void

    .line 6021
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6029
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 6023
    goto :goto_1
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5953
    if-eqz p1, :cond_0

    .line 5954
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5955
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5960
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5961
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5962
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5969
    return-void

    .line 5958
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5966
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5960
    goto :goto_1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6530
    if-eqz p1, :cond_0

    .line 6531
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6532
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6537
    :goto_0
    if-eqz p2, :cond_1

    .line 6538
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6539
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6544
    :goto_1
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6551
    return-void

    .line 6535
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6548
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 6542
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4711
    if-eqz p1, :cond_0

    .line 4712
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4713
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4718
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4719
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4726
    return-void

    .line 4716
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4723
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 4718
    goto :goto_1
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7177
    if-eqz p1, :cond_0

    .line 7178
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7179
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7184
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7185
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7186
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7193
    return-void

    .line 7182
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7190
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5447
    if-eqz p1, :cond_0

    .line 5448
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5449
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5454
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5456
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5463
    return-void

    .line 5452
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5460
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 5454
    goto :goto_1
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7900
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7904
    if-eqz p1, :cond_0

    .line 7905
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7906
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7911
    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7912
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 7917
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7920
    return v2

    .line 7909
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7917
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v4, v3

    .line 7911
    goto :goto_1

    :cond_2
    move v2, v3

    .line 7914
    goto :goto_2
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4296
    if-eqz p1, :cond_0

    .line 4297
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4298
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4303
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4304
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4309
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4312
    return v2

    .line 4301
    .end local v2    # "_result":I
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4309
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v3, v4

    .line 4303
    goto :goto_1
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7828
    if-eqz p1, :cond_0

    .line 7829
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7830
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7835
    :goto_0
    if-eqz p2, :cond_1

    .line 7836
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7837
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7842
    :goto_1
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7849
    return-void

    .line 7833
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7846
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 7840
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7462
    if-eqz p1, :cond_0

    .line 7463
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7464
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7469
    :goto_0
    if-eqz p2, :cond_1

    .line 7470
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7471
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7476
    :goto_1
    if-eqz p3, :cond_2

    .line 7477
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7478
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7483
    :goto_2
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7490
    return-void

    .line 7467
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7487
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 7474
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 7481
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7263
    if-eqz p1, :cond_0

    .line 7264
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7265
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7270
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7271
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7272
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7279
    return-void

    .line 7268
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7276
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 7271
    goto :goto_1
.end method

.method public setUserEnabled(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7667
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7668
    if-eqz p1, :cond_0

    .line 7669
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7670
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7675
    :goto_0
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 7680
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7683
    return v2

    .line 7673
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7680
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 7677
    goto :goto_1
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7800
    if-eqz p1, :cond_0

    .line 7801
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7802
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7807
    :goto_0
    if-eqz p2, :cond_1

    .line 7808
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7809
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7814
    :goto_1
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7821
    return-void

    .line 7805
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7818
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 7812
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6580
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6581
    if-eqz p1, :cond_0

    .line 6582
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6583
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6588
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6589
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6590
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6591
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6597
    return-void

    .line 6586
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6594
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 6589
    goto :goto_1
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 6
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "contactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7376
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7377
    if-eqz p4, :cond_0

    .line 7378
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7379
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7384
    :goto_0
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7391
    return-void

    .line 7382
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7388
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6949
    if-eqz p1, :cond_0

    .line 6950
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6951
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6956
    :goto_0
    if-eqz p2, :cond_1

    .line 6957
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6958
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6963
    :goto_1
    iget-object v4, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x93

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6964
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6965
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 6968
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6971
    return v2

    .line 6954
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6968
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 6961
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6965
    goto :goto_2
.end method

.method public uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5279
    if-eqz p1, :cond_0

    .line 5280
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5281
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5286
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5287
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5294
    return-void

    .line 5284
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5291
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wipeData(II)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4198
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4199
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4206
    return-void

    .line 4203
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
