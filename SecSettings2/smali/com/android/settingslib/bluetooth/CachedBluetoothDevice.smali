.class public final Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private isContactInfo:Z

.field private mAppearance:S

.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private mContactName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mGearIsConnected:Z

.field private mGearManagerName:[B

.field private mIsConnectingErrorPossible:Z

.field private mIsSLDDevice:Z

.field private mIsTablet:Z

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p3, "profileManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isContactInfo:Z

    .line 189
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 191
    iput-object p3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 192
    iput-object p4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 194
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 195
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 269
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    return-void

    .line 273
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 275
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 276
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 6
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 237
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "preferredProfiles":I
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 254
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    :goto_2
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 254
    :cond_3
    invoke-interface {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 261
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_4
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred profiles = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 854
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 855
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;

    .line 856
    .local v0, "callback":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 858
    .end local v0    # "callback":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchAppearance()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAppearance()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    .line 633
    return-void
.end method

.method private fetchBtClass()V
    .locals 3

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 626
    .local v0, "newBtClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x1f00

    if-eq v1, v2, :cond_0

    .line 627
    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 629
    :cond_0
    return-void
.end method

.method private fetchGearIsConnected()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getGearIsConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearIsConnected:Z

    .line 644
    return-void
.end method

.method private fetchGearManagerName()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    .line 638
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setContactInfo()V

    .line 639
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchGearManagerName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private fetchIsSLDDevice()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 647
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "fetchIsSLDDevice ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    .line 649
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    aget-byte v0, v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    aget-byte v0, v0, v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 654
    :cond_0
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "fetchIsSLDDevice :: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsSLDDevice:Z

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "fetchIsSLDDevice :: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsSLDDevice:Z

    goto :goto_0
.end method

.method private fetchIsTablet()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "fetchIsTablet ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    .line 667
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    .line 675
    :goto_0
    return-void

    .line 674
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    goto :goto_0
.end method

.method private fetchName()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 495
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device has no name (yet), use address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 499
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device has no Device name (yet), use address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 407
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 408
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 410
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 411
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchAppearance()V

    .line 414
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchGearManagerName()V

    .line 415
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchGearIsConnected()V

    .line 416
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchIsSLDDevice()V

    .line 417
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchIsTablet()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 420
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 421
    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 950
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth_map_permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 952
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v2

    if-nez v2, :cond_0

    .line 957
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 958
    .local v0, "oldPermission":I
    if-ne v0, v5, :cond_2

    .line 959
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0

    .line 960
    :cond_2
    if-ne v0, v6, :cond_0

    .line 961
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 913
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth_phonebook_permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 915
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    if-nez v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 921
    .local v0, "oldPermission":I
    if-ne v0, v5, :cond_2

    .line 922
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 923
    :cond_2
    if-ne v0, v6, :cond_0

    .line 924
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method

.method private setContactInfo()V
    .locals 3

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isContactType([B)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    invoke-static {v1, v2}, Lcom/android/settings_exlib/bluetooth/Utils;->getParsePhoneNumber(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    .line 1176
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings_exlib/bluetooth/Utils;->retrieveContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "contactName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    .line 1183
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateProfiles()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 678
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "updateProfiles"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 680
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 682
    :cond_1
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 683
    .local v2, "localUuids":[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 690
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsSLDDevice:Z

    if-eqz v0, :cond_5

    .line 691
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getBleAudioProfile()Lcom/android/settings_exlib/bluetooth/BleAudioProfile;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 705
    .local v10, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    instance-of v0, v10, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    .line 706
    const-string v0, "CachedBluetoothDevice"

    const-string v3, "PAN connection exists. Restore PAN profile."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 708
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_3
    const-string v0, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating profiles for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    .line 718
    .local v7, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v7, :cond_4

    const-string v0, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_4
    const-string v0, "CachedBluetoothDevice"

    const-string v3, "UUID:"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object v6, v1

    .local v6, "arr$":[Landroid/os/ParcelUuid;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_6

    aget-object v11, v6, v8

    .line 721
    .local v11, "uuid":Landroid/os/ParcelUuid;
    const-string v0, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 694
    .end local v6    # "arr$":[Landroid/os/ParcelUuid;
    .end local v7    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "uuid":Landroid/os/ParcelUuid;
    :cond_5
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;Z)V

    goto/16 :goto_1

    .line 724
    .restart local v6    # "arr$":[Landroid/os/ParcelUuid;
    .restart local v7    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 397
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 400
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 402
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .param p1, "another"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 884
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 885
    .local v0, "comparison":I
    if-eqz v0, :cond_2

    move v1, v0

    .line 905
    :goto_2
    return v1

    .end local v0    # "comparison":I
    :cond_0
    move v1, v3

    .line 884
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 888
    .restart local v0    # "comparison":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearIsConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iget-boolean v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearIsConnected:Z

    if-eqz v4, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 889
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 888
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 892
    :cond_5
    invoke-virtual {p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v2

    :goto_6
    sub-int v0, v1, v4

    .line 894
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 892
    goto :goto_5

    :cond_7
    move v4, v3

    goto :goto_6

    .line 897
    :cond_8
    iget-boolean v1, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_9

    move v1, v2

    :goto_7
    iget-boolean v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_a

    :goto_8
    sub-int v0, v1, v2

    .line 898
    if-eqz v0, :cond_b

    move v1, v0

    goto :goto_2

    :cond_9
    move v1, v3

    .line 897
    goto :goto_7

    :cond_a
    move v2, v3

    goto :goto_8

    .line 901
    :cond_b
    iget-short v1, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 902
    if-eqz v0, :cond_c

    move v1, v0

    goto :goto_2

    .line 905
    :cond_c
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect(Z)V
    .locals 2
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 226
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public connectProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 295
    return-void
.end method

.method public disconnect()V
    .locals 6

    .prologue
    .line 198
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 199
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect :: profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 205
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 206
    .local v0, "PbapProfile":Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 210
    :cond_1
    return-void
.end method

.method public disconnect(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 868
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 869
    :cond_0
    const/4 v0, 0x0

    .line 871
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppearance()S
    .locals 1

    .prologue
    .line 537
    iget-short v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    return v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v0, "connectableProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 826
    .local v2, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 827
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectableProfiles :: addprofile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    .end local v2    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method public declared-synchronized getConnectionSummary()I
    .locals 16

    .prologue
    .line 1022
    monitor-enter p0

    const/4 v12, 0x0

    .line 1023
    .local v12, "profileConnected":Z
    const/4 v1, 0x0

    .line 1024
    .local v1, "a2dpNotConnected":Z
    const/4 v3, 0x0

    .line 1027
    .local v3, "headsetNotConnected":Z
    const/4 v5, 0x0

    .line 1028
    .local v5, "isA2dpConnected":Z
    const/4 v6, 0x0

    .line 1029
    .local v6, "isHeadsetConnected":Z
    const/4 v7, 0x0

    .line 1030
    .local v7, "isHidConnected":Z
    const/4 v8, 0x0

    .line 1031
    .local v8, "isNapConnected":Z
    const/4 v9, 0x0

    .line 1033
    .local v9, "isPanuConnected":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v10

    .line 1034
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_6

    .line 1035
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 1036
    .local v11, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    if-nez v11, :cond_1

    .line 1037
    const-string v13, "CachedBluetoothDevice"

    const-string v14, "getConnectionSummary :: profile is null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 1042
    .local v2, "connectionStatus":I
    const-string v13, "CachedBluetoothDevice"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getConnectionSummary :: profile ::"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  connectionStatus::"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1046
    :pswitch_0
    invoke-static {v2}, Lcom/android/settings_exlib/bluetooth/Utils;->getConnectionStateSummary(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 1104
    .end local v2    # "connectionStatus":I
    .end local v11    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :goto_2
    monitor-exit p0

    return v13

    .line 1049
    .restart local v2    # "connectionStatus":I
    .restart local v11    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :pswitch_1
    :try_start_1
    const-string v13, "CachedBluetoothDevice"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " profile Connected"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v12, 0x1

    .line 1051
    instance-of v13, v11, Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-eqz v13, :cond_2

    .line 1052
    const/4 v5, 0x1

    .line 1054
    :cond_2
    instance-of v13, v11, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-eqz v13, :cond_3

    .line 1055
    const/4 v6, 0x1

    .line 1057
    :cond_3
    instance-of v13, v11, Lcom/android/settings_exlib/bluetooth/HidProfile;

    if-eqz v13, :cond_4

    .line 1058
    const/4 v7, 0x1

    .line 1060
    :cond_4
    instance-of v13, v11, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v13, :cond_5

    move-object v0, v11

    check-cast v0, Lcom/android/settings_exlib/bluetooth/PanProfile;

    move-object v13, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings_exlib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1061
    const/4 v8, 0x1

    .line 1063
    :cond_5
    instance-of v13, v11, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v13, :cond_0

    .line 1064
    const/4 v9, 0x1

    goto :goto_1

    .line 1073
    .end local v2    # "connectionStatus":I
    .end local v11    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_6
    if-eqz v12, :cond_d

    .line 1074
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 1075
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_summary_connected_to_a2dp_headset:I

    goto :goto_2

    .line 1076
    :cond_7
    if-eqz v5, :cond_8

    .line 1077
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    goto :goto_2

    .line 1078
    :cond_8
    if-eqz v6, :cond_9

    .line 1079
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_headset_profile_summary_connected:I

    goto :goto_2

    .line 1080
    :cond_9
    if-eqz v7, :cond_a

    .line 1081
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_hid_profile_summary_connected:I

    goto :goto_2

    .line 1082
    :cond_a
    if-eqz v8, :cond_b

    .line 1083
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_pan_nap_connected:I

    goto :goto_2

    .line 1084
    :cond_b
    if-eqz v9, :cond_c

    .line 1085
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_pan_panu_connected:I

    goto :goto_2

    .line 1087
    :cond_c
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_connected:I

    goto :goto_2

    .line 1092
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearIsConnected()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isSppOnlyDevice()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1093
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_connected:I

    goto :goto_2

    .line 1097
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v13

    packed-switch v13, :pswitch_data_1

    .line 1104
    const/4 v13, 0x0

    goto :goto_2

    .line 1099
    :pswitch_2
    sget v13, Lcom/android/settings_exlib/R$string;->bluetooth_pairing:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1022
    .end local v4    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1097
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getGearIsConnected()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearIsConnected:Z

    return v0
.end method

.method public getGearManagerName()[B
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    return-object v0
.end method

.method public getMessagePermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 967
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    .line 968
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 973
    :goto_0
    return v1

    .line 970
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 971
    goto :goto_0

    .line 973
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isContactInfo:Z

    .line 434
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 442
    :goto_0
    return-object v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isContactInfo:Z

    .line 438
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonebookPermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 930
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    .line 931
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 936
    :goto_0
    return v1

    .line 933
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 934
    goto :goto_0

    .line 936
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I
    .locals 4
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 377
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "state":I
    if-eqz p1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 387
    :cond_1
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileConnectionState :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v0    # "state":I
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getSimPermissionChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 987
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    .line 988
    .local v0, "permission":I
    if-ne v0, v1, :cond_0

    .line 993
    :goto_0
    return v1

    .line 990
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 991
    goto :goto_0

    .line 993
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v2, 0x0

    .line 805
    if-nez p1, :cond_1

    .line 806
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "hasProfile :: target profile is null, return false."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    :goto_0
    return v2

    .line 810
    :cond_1
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 811
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 812
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 587
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 588
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 589
    .local v2, "status":I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 594
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 567
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .line 568
    .local v1, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 569
    .local v2, "status":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 577
    .end local v1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return v3

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearIsConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->isSppOnlyDevice()Z

    move-result v4

    if-nez v4, :cond_1

    .line 577
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnectedProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 581
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 582
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContactType([B)Z
    .locals 2
    .param p1, "gm"    # [B

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1190
    const/4 v0, 0x1

    .line 1192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGearCircle()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    .line 600
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v3, :cond_0

    .line 601
    array-length v3, v0

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v1

    .line 603
    :cond_1
    const/4 v3, 0x7

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    aget-byte v3, v0, v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x404

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 606
    goto :goto_0
.end method

.method public isSLDDevice()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsSLDDevice:Z

    return v0
.end method

.method public isSppOnlyDevice()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    .line 1110
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_1

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    if-nez v2, :cond_1

    aget-byte v2, v0, v3

    if-eq v2, v1, :cond_0

    aget-byte v2, v0, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1114
    const-string v2, "CachedBluetoothDevice"

    const-string v3, "isSppOnlyDevice :: true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 233
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .param p1, "bondState"    # I

    .prologue
    const/4 v1, 0x0

    .line 765
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    .line 772
    iput-boolean v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 773
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 774
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 780
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 786
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 788
    :cond_2
    return-void

    .line 783
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "newProfileState"    # I

    .prologue
    .line 143
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 148
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :goto_0
    return-void

    .line 151
    .restart local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 158
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mIsSLDDevice:Z

    if-eqz v0, :cond_2

    .line 159
    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/BleAudioProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 162
    .restart local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    .end local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settings_exlib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_1

    .line 174
    .restart local p1    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings_exlib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 177
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_1
.end method

.method onUuidChanged()V
    .locals 10

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 741
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 743
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    const-wide/16 v0, 0x1388

    .line 744
    .local v0, "timeout":J
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    const-wide/16 v0, 0x7530

    .line 749
    :cond_0
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUuidChanged: Time since last connect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 759
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 761
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 762
    return-void
.end method

.method processActionFoundEvent(SLandroid/bluetooth/BluetoothClass;SLjava/lang/String;Z[B)V
    .locals 4
    .param p1, "rssi"    # S
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;
    .param p3, "appearance"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "visible"    # Z
    .param p6, "gm"    # [B

    .prologue
    .line 1124
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processActionFoundEvent :: rssi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", BtClass : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", appearance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Visible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GearManagerName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v0, 0x0

    .line 1129
    .local v0, "needUpdate":Z
    iget-short v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v1, p1, :cond_0

    .line 1130
    iput-short p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 1134
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v1, p2, :cond_1

    .line 1135
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btClass ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 1137
    const/4 v0, 0x1

    .line 1140
    :cond_1
    iget-short v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    if-eq v1, p3, :cond_2

    .line 1141
    iput-short p3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    .line 1142
    const/4 v0, 0x1

    .line 1145
    :cond_2
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1146
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1147
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1152
    :goto_0
    const/4 v0, 0x1

    .line 1155
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v1, p5, :cond_4

    .line 1156
    iput-boolean p5, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 1160
    :cond_4
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    if-eq v1, p6, :cond_5

    .line 1161
    iput-object p6, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearManagerName:[B

    .line 1162
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->setContactInfo()V

    .line 1163
    const/4 v0, 0x1

    .line 1166
    :cond_5
    if-eqz v0, :cond_6

    .line 1167
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "calling dispatchAttributesChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1170
    :cond_6
    return-void

    .line 1149
    :cond_7
    iput-object p4, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1150
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 505
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 733
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 734
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 487
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 488
    return-void
.end method

.method public registerCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 841
    monitor-exit v1

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 3
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 791
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 793
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtClass :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 796
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 798
    :cond_0
    return-void
.end method

.method setGearIsConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mGearIsConnected:Z

    .line 555
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 979
    const/4 v0, 0x1

    .line 983
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 984
    return-void

    .line 980
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 981
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 481
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 483
    :cond_0
    return-void
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 942
    const/4 v0, 0x1

    .line 946
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 947
    return-void

    .line 943
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 944
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .param p1, "rssi"    # S

    .prologue
    .line 523
    iget-short v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 524
    iput-short p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 525
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 527
    :cond_0
    return-void
.end method

.method public setSimPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 999
    const/4 v0, 0x1

    .line 1003
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 1004
    return-void

    .line 1000
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1001
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 513
    iput-boolean p1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 514
    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 516
    :cond_0
    return-void
.end method

.method public startPairing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 323
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    const/4 v0, 0x0

    .line 339
    :cond_1
    :goto_0
    return v0

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    .line 333
    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0

    .line 336
    :cond_3
    iput-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 355
    .local v1, "state":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 359
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 361
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 363
    .local v2, "successful":Z
    if-eqz v2, :cond_2

    .line 365
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "successful":Z
    :cond_1
    :goto_0
    return-void

    .line 368
    .restart local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "successful":Z
    :cond_2
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Framework rejected command immediately:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit v1

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
