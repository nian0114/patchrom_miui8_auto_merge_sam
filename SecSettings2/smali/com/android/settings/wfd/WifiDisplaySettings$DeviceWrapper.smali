.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceWrapper"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private final mDLNA:Lcom/samsung/android/allshare/Device;

.field private mDeviceUid:Ljava/lang/String;

.field private mIsSupportMirroring:Z

.field private mIsSupportTDLS:Z

.field private mWlanFrequency:I

.field private mWlanMacAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V
    .locals 2
    .param p2, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDeviceUid:Ljava/lang/String;

    .line 1665
    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    .line 1667
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, "screenSharingInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1669
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->parseDeviceInfo(Ljava/lang/String;)V

    .line 1671
    :cond_0
    return-void
.end method

.method private parseDeviceInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1674
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseDeviceInfo value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1679
    .local v6, "set":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 1680
    .local v5, "s":Ljava/lang/String;
    const-string v7, "wlanMacAddress"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1681
    const/16 v7, 0xf

    const/16 v9, 0x20

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanMacAddress:Ljava/lang/String;

    .line 1679
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1682
    :cond_1
    const-string v7, "WFDRole"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1684
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, "array":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v1, v7

    const-string v9, "PrimarySink"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    aget-object v7, v1, v7

    const-string v9, "Dual"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportMirroring:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1698
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1699
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "WifiDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseDeviceInfo exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 1685
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1686
    .end local v1    # "array":[Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v7, "supportTDLS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1688
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1689
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v1, v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportTDLS:Z

    goto :goto_1

    .line 1690
    .end local v1    # "array":[Ljava/lang/String;
    :cond_6
    const-string v7, "bssid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1691
    const/4 v7, 0x6

    const/16 v9, 0x17

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mBssid:Ljava/lang/String;

    goto :goto_1

    .line 1692
    :cond_7
    const-string v7, "wlanFrequency"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1694
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1695
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanFrequency:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDLNA()Lcom/samsung/android/allshare/Device;
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    return-object v0
.end method

.method public getDeviceUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDeviceUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDeviceUid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingP2pMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWlanFrequency()I
    .locals 1

    .prologue
    .line 1756
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanFrequency:I

    return v0
.end method

.method public getWlanMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportMirroring()Z
    .locals 1

    .prologue
    .line 1740
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportMirroring:Z

    return v0
.end method

.method public isSupportTDLS()Z
    .locals 1

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportTDLS:Z

    return v0
.end method

.method public setDeviceUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceUid"    # Ljava/lang/String;

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDeviceUid:Ljava/lang/String;

    .line 1729
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1762
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mDeviceUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wlanMacAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mWlanMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSupportMirroring : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportMirroring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSupportTDLS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mIsSupportTDLS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->mBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1765
    return-object v0
.end method
