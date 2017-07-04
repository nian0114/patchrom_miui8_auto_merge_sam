.class Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForGeneralNwInfo:Z

.field private flagForPostNetworkName:Z

.field private flagForPrevNetworkName:Z

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1264
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1266
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1267
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1268
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Z)Z

    .line 1269
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1270
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    .line 1271
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPostNetworkName:Z

    .line 1272
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1273
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkNetworkName()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 1718
    const-string v7, ""

    .line 1719
    .local v7, "mMCCMNC":Ljava/lang/String;
    const-string v6, ""

    .line 1720
    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .line 1721
    .local v5, "mEap":Ljava/lang/String;
    const-string v8, ""

    .line 1722
    .local v8, "mSPName":Ljava/lang/String;
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1723
    .local v9, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1724
    const-string v11, "gsm.sim.operator.alpha"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1725
    iget-object v11, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1726
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v11, ""

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1727
    const-string v11, ""

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 1728
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkNetworkName: mMCCMNC = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSPName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1731
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 1732
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1733
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1734
    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1735
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1736
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMatchedNetworkName(SPName) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    .end local v4    # "j":I
    :cond_1
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1748
    const/4 v10, 0x0

    .local v10, "p":I
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_8

    .line 1749
    if-eqz v1, :cond_11

    .line 1750
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1751
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1752
    :cond_3
    const-string v6, "WPA-EAP IEEE8021X"

    .line 1759
    :goto_3
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    .line 1760
    const-string v5, "SIM"

    .line 1771
    :goto_4
    iget-boolean v11, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v11, :cond_2

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1773
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1774
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 1775
    :cond_5
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMatchedPrevNetworkName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_6
    const-string v6, ""

    .line 1778
    const-string v5, ""

    .line 1779
    const/4 v11, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$2202(Z)Z

    .line 1783
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const-string v11, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 1791
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":I
    :cond_8
    :goto_5
    return-void

    .line 1740
    .restart local v4    # "j":I
    :cond_9
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1741
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMatchedNetworkName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1788
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 1789
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "checkNetworkName - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1731
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "j":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v4    # "j":I
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v10    # "p":I
    :cond_b
    :try_start_1
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1754
    const-string v6, "NONE"

    goto/16 :goto_3

    .line 1756
    :cond_c
    const-string v6, ""

    goto/16 :goto_3

    .line 1761
    :cond_d
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_e

    .line 1762
    const-string v5, "AKA"

    goto/16 :goto_4

    .line 1763
    :cond_e
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    if-nez v11, :cond_f

    .line 1764
    const-string v5, "PEAP"

    goto/16 :goto_4

    .line 1765
    :cond_f
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    if-ne v11, v14, :cond_10

    .line 1766
    const-string v5, "TTLS"

    goto/16 :goto_4

    .line 1768
    :cond_10
    const-string v5, ""
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1748
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 23
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1603
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "WifiService"

    const-string v20, "getGeneralNwInfoFromFile()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1606
    const-string v3, ""

    .line 1607
    .local v3, "buf1":Ljava/lang/String;
    const-string v4, ""

    .line 1608
    .local v4, "buf2":Ljava/lang/String;
    const-string v5, ""

    .line 1610
    .local v5, "buf3":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1612
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "bufLine":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1616
    const-string v19, "mccmnc=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1617
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1618
    .local v11, "mccmnc":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1619
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1620
    goto :goto_0

    .end local v11    # "mccmnc":Ljava/lang/String;
    :cond_2
    const-string v19, "networkname=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1621
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1622
    .local v14, "networkname":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1623
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1624
    goto/16 :goto_0

    .end local v14    # "networkname":Ljava/lang/String;
    :cond_3
    const-string v19, "spname=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1625
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 1626
    .local v17, "spname":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1627
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 1628
    goto/16 :goto_0

    .line 1634
    .end local v17    # "spname":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 1636
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1644
    :cond_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1645
    .local v12, "mccmncs":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1646
    .local v15, "networknames":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1648
    .local v18, "spnames":[Ljava/lang/String;
    array-length v13, v12

    .line 1649
    .local v13, "networkCount":I
    new-array v0, v13, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-object/from16 v16, v0

    .line 1651
    .local v16, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v13, :cond_a

    .line 1652
    :try_start_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1653
    new-instance v19, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v20, v12, v8

    aget-object v21, v15, v8

    aget-object v22, v18, v8

    invoke-direct/range {v19 .. v22}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v16, v8

    .line 1654
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "GeneralNwInfo["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]: mccmnc("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") networkname("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") spname("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1651
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1637
    .end local v8    # "i":I
    .end local v12    # "mccmncs":[Ljava/lang/String;
    .end local v13    # "networkCount":I
    .end local v15    # "networknames":[Ljava/lang/String;
    .end local v16    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v18    # "spnames":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1638
    .local v7, "e":Ljava/io/IOException;
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/16 v16, 0x0

    move-object v9, v10

    .line 1663
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    return-object v16

    .line 1630
    :catch_1
    move-exception v7

    .line 1631
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1632
    const/16 v16, 0x0

    .line 1634
    if-eqz v9, :cond_7

    .line 1636
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1637
    :catch_2
    move-exception v7

    .line 1638
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/16 v16, 0x0

    goto :goto_3

    .line 1634
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_5
    if-eqz v9, :cond_8

    .line 1636
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1639
    :cond_8
    throw v19

    .line 1637
    :catch_3
    move-exception v7

    .line 1638
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/16 v16, 0x0

    goto :goto_3

    .line 1656
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "bufLine":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "mccmncs":[Ljava/lang/String;
    .restart local v13    # "networkCount":I
    .restart local v15    # "networknames":[Ljava/lang/String;
    .restart local v16    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v18    # "spnames":[Ljava/lang/String;
    :cond_9
    :try_start_7
    new-instance v19, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v20, v12, v8

    aget-object v21, v15, v8

    invoke-direct/range {v19 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v16, v8

    .line 1657
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "GeneralNwInfo["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]: mccmnc("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") networkname("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    .line 1661
    :catch_4
    move-exception v7

    .line 1662
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v19, "WifiService"

    const-string v20, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/16 v16, 0x0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :cond_a
    move-object v9, v10

    .line 1660
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1634
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v12    # "mccmncs":[Ljava/lang/String;
    .end local v13    # "networkCount":I
    .end local v15    # "networknames":[Ljava/lang/String;
    .end local v16    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v18    # "spnames":[Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1630
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1668
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    .line 1670
    const-string v0, ""

    .line 1672
    .local v0, "buf1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1674
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1678
    const-string v11, "networkname=\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1679
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1680
    .local v7, "networkname":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x22

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1682
    goto :goto_0

    .line 1688
    .end local v7    # "networkname":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 1690
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1698
    :cond_2
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1699
    .local v8, "networknames":[Ljava/lang/String;
    array-length v6, v8

    .line 1700
    .local v6, "networkCount":I
    new-array v9, v6, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1702
    .local v9, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_6

    .line 1703
    :try_start_3
    new-instance v11, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v12, v8, v3

    invoke-direct {v11, v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v3

    .line 1704
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPrevNetworkNameFromFile: PrevNetworkName["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v3

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1702
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1691
    .end local v3    # "i":I
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :catch_0
    move-exception v2

    .line 1692
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1709
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v9

    .line 1684
    :catch_1
    move-exception v2

    .line 1685
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1688
    if-eqz v4, :cond_4

    .line 1690
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    move-object v9, v10

    .line 1693
    goto :goto_2

    .line 1691
    :catch_2
    move-exception v2

    .line 1692
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 1693
    goto :goto_2

    .line 1688
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v4, :cond_5

    .line 1690
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1693
    :cond_5
    throw v11

    .line 1691
    :catch_3
    move-exception v2

    .line 1692
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 1693
    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "networkCount":I
    .restart local v8    # "networknames":[Ljava/lang/String;
    .restart local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_6
    move-object v4, v5

    .line 1706
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1707
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 1708
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile: No ApInfo - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1709
    goto :goto_2

    .line 1688
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1684
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 47
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1396
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_0
    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Z)Z

    .line 1399
    const-string v42, ""

    .line 1400
    .local v42, "ssidbuf":Ljava/lang/String;
    const-string v21, ""

    .line 1401
    .local v21, "keymgmtbuf":Ljava/lang/String;
    const-string v45, ""

    .line 1402
    .local v45, "wepkeybuf":Ljava/lang/String;
    const-string v33, ""

    .line 1403
    .local v33, "prioritybuf":Ljava/lang/String;
    const-string v12, ""

    .line 1404
    .local v12, "eapbuf":Ljava/lang/String;
    const-string v24, ""

    .line 1405
    .local v24, "networknamebuf":Ljava/lang/String;
    const-string v39, ""

    .line 1406
    .local v39, "spnamebuf":Ljava/lang/String;
    const-string v17, ""

    .line 1407
    .local v17, "identitybuf":Ljava/lang/String;
    const-string v27, ""

    .line 1408
    .local v27, "passwordbuf":Ljava/lang/String;
    const-string v31, ""

    .line 1410
    .local v31, "phasebuf":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1412
    .local v19, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1414
    .end local v19    # "in":Ljava/io/BufferedReader;
    .local v20, "in":Ljava/io/BufferedReader;
    const/16 v1, 0xa

    :try_start_1
    new-array v14, v1, [I

    fill-array-data v14, :array_0

    .line 1415
    .local v14, "flagForApinfo":[I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "bufLine":Ljava/lang/String;
    if-eqz v9, :cond_18

    .line 1416
    const-string v1, "ssid=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1417
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 1418
    .local v41, "ssid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1420
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v14, v1

    .line 1468
    .end local v41    # "ssid":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "}"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1469
    const/4 v1, 0x0

    aget v1, v14, v1

    if-nez v1, :cond_3

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1471
    :cond_3
    const/4 v1, 0x1

    aget v1, v14, v1

    if-nez v1, :cond_4

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1473
    :cond_4
    const/4 v1, 0x2

    aget v1, v14, v1

    if-nez v1, :cond_5

    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1475
    :cond_5
    const/4 v1, 0x3

    aget v1, v14, v1

    if-nez v1, :cond_6

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1477
    :cond_6
    const/4 v1, 0x4

    aget v1, v14, v1

    if-nez v1, :cond_7

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1479
    :cond_7
    const/4 v1, 0x5

    aget v1, v14, v1

    if-nez v1, :cond_8

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1481
    :cond_8
    const/4 v1, 0x6

    aget v1, v14, v1

    if-nez v1, :cond_9

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1483
    :cond_9
    const/4 v1, 0x7

    aget v1, v14, v1

    if-nez v1, :cond_a

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1485
    :cond_a
    const/16 v1, 0x8

    aget v1, v14, v1

    if-nez v1, :cond_b

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1487
    :cond_b
    const/16 v1, 0x9

    aget v1, v14, v1

    if-nez v1, :cond_c

    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1490
    :cond_c
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->APInfoCount:I
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3800()I

    move-result v1

    if-ge v15, v1, :cond_1

    .line 1491
    const/4 v1, 0x0

    aput v1, v14, v15

    .line 1490
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1421
    .end local v15    # "i":I
    :cond_d
    const-string v1, "key_mgmt="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1422
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    .line 1423
    .local v36, "secure":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1425
    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v14, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1494
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    .end local v36    # "secure":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object/from16 v19, v20

    .line 1495
    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v10, "e":Ljava/io/IOException;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1496
    const/16 v35, 0x0

    .line 1498
    if-eqz v19, :cond_e

    .line 1500
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1598
    .end local v10    # "e":Ljava/io/IOException;
    :cond_e
    :goto_3
    return-object v35

    .line 1426
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v14    # "flagForApinfo":[I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_f
    :try_start_4
    const-string v1, "wep_key0="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1427
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    .line 1428
    .local v44, "wepkey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1430
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v14, v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1498
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    .end local v44    # "wepkey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v19, :cond_10

    .line 1500
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1503
    :cond_10
    throw v1

    .line 1431
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v14    # "flagForApinfo":[I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_11
    :try_start_6
    const-string v1, "priority="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1432
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    .line 1433
    .local v32, "priority":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1435
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1436
    .end local v32    # "priority":Ljava/lang/String;
    :cond_12
    const-string v1, "eap="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1437
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1438
    .local v11, "eap":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1440
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1441
    .end local v11    # "eap":Ljava/lang/String;
    :cond_13
    const-string v1, "networkname=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1442
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 1443
    .local v23, "networkname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1445
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1446
    .end local v23    # "networkname":Ljava/lang/String;
    :cond_14
    const-string v1, "spname=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1447
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    .line 1448
    .local v38, "spname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1450
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1451
    .end local v38    # "spname":Ljava/lang/String;
    :cond_15
    const-string v1, "identity=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1452
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1453
    .local v16, "identity":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1455
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1456
    .end local v16    # "identity":Ljava/lang/String;
    :cond_16
    const-string v1, "password=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1457
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 1458
    .local v26, "password":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1460
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1461
    .end local v26    # "password":Ljava/lang/String;
    :cond_17
    const-string v1, "phase2=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1462
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1463
    .local v29, "phase2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1465
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput v2, v14, v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1498
    .end local v29    # "phase2":Ljava/lang/String;
    :cond_18
    if-eqz v20, :cond_19

    .line 1500
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1508
    :cond_19
    const-string v1, ","

    move-object/from16 v0, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 1509
    .local v43, "ssids":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 1510
    .local v37, "secures":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v46

    .line 1511
    .local v46, "wepkeys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 1512
    .local v34, "prioritys":[Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1513
    .local v13, "eaps":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1514
    .local v25, "networknames":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 1515
    .local v40, "spnames":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1516
    .local v18, "identitys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1517
    .local v28, "passwords":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1520
    .local v30, "phase2s":[Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v22, v0

    .line 1521
    .local v22, "networkCount":I
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-object/from16 v35, v0

    .line 1522
    .local v35, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    move/from16 v0, v22

    if-ge v15, v0, :cond_2c

    .line 1523
    const-string v1, "WPA-EAP IEEE8021X"

    aget-object v2, v37, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1524
    const-string v1, " "

    aget-object v2, v34, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, " "

    aget-object v2, v43, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, " "

    aget-object v2, v13, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1525
    const-string v1, " "

    aget-object v2, v18, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, " "

    aget-object v2, v28, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1526
    const-string v1, " "

    aget-object v2, v25, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1527
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1528
    const-string v1, " "

    aget-object v2, v40, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1529
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v25, v15

    aget-object v7, v40, v15

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    .line 1539
    :goto_6
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM/AKA DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1522
    :cond_1a
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 1501
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v15    # "i":I
    .end local v18    # "identitys":[Ljava/lang/String;
    .end local v22    # "networkCount":I
    .end local v25    # "networknames":[Ljava/lang/String;
    .end local v28    # "passwords":[Ljava/lang/String;
    .end local v30    # "phase2s":[Ljava/lang/String;
    .end local v34    # "prioritys":[Ljava/lang/String;
    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v37    # "secures":[Ljava/lang/String;
    .end local v40    # "spnames":[Ljava/lang/String;
    .end local v43    # "ssids":[Ljava/lang/String;
    .end local v46    # "wepkeys":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1502
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/16 v35, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1501
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    :catch_2
    move-exception v10

    .line 1502
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 1501
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 1502
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 1531
    .end local v10    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v13    # "eaps":[Ljava/lang/String;
    .restart local v14    # "flagForApinfo":[I
    .restart local v15    # "i":I
    .restart local v18    # "identitys":[Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "networkCount":I
    .restart local v25    # "networknames":[Ljava/lang/String;
    .restart local v28    # "passwords":[Ljava/lang/String;
    .restart local v30    # "phase2s":[Ljava/lang/String;
    .restart local v34    # "prioritys":[Ljava/lang/String;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v37    # "secures":[Ljava/lang/String;
    .restart local v40    # "spnames":[Ljava/lang/String;
    .restart local v43    # "ssids":[Ljava/lang/String;
    .restart local v46    # "wepkeys":[Ljava/lang/String;
    :cond_1b
    :try_start_9
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v25, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_6

    .line 1596
    .end local v15    # "i":I
    .end local v22    # "networkCount":I
    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :catch_4
    move-exception v10

    .line 1597
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/16 v35, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1534
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "i":I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "networkCount":I
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_1c
    :try_start_a
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v25, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    goto/16 :goto_6

    .line 1537
    :cond_1d
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    goto/16 :goto_6

    .line 1540
    :cond_1e
    const-string v1, " "

    aget-object v2, v18, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, " "

    aget-object v2, v28, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1541
    const-string v1, " "

    aget-object v2, v30, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1542
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v18, v15

    aget-object v7, v28, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    .line 1545
    :goto_8
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEAP/TTLS DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1544
    :cond_1f
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v18, v15

    aget-object v7, v28, v15

    aget-object v8, v30, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    goto :goto_8

    .line 1547
    :cond_20
    const-string v1, "WifiService"

    const-string v2, "WPA-EAP IEEE8021X Parse error for default ap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1551
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_21
    const-string v1, "WifiService"

    const-string v2, "WPA-EAP IEEE8021X Parse error for default ap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1554
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_22
    const-string v1, "NONE"

    aget-object v2, v37, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1555
    const-string v1, " "

    aget-object v2, v43, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1556
    const-string v1, " "

    aget-object v2, v34, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1557
    const-string v1, " "

    aget-object v2, v25, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1558
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1559
    const-string v1, " "

    aget-object v2, v40, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1560
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v25, v15

    aget-object v6, v40, v15

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    .line 1585
    :goto_9
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPEN DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1562
    :cond_23
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto :goto_9

    .line 1565
    :cond_24
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto :goto_9

    .line 1568
    :cond_25
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto :goto_9

    .line 1571
    :cond_26
    const-string v1, " "

    aget-object v2, v25, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1572
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1573
    const-string v1, " "

    aget-object v2, v40, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1574
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    aget-object v5, v25, v15

    aget-object v6, v40, v15

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1576
    :cond_27
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1579
    :cond_28
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1582
    :cond_29
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1587
    :cond_2a
    const-string v1, "WifiService"

    const-string v2, "Key Mgmt is NONE but SSID is NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1591
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_2b
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secure ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v37, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1592
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_2c
    move-object/from16 v19, v20

    .line 1595
    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1498
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    .end local v15    # "i":I
    .end local v18    # "identitys":[Ljava/lang/String;
    .end local v22    # "networkCount":I
    .end local v25    # "networknames":[Ljava/lang/String;
    .end local v28    # "passwords":[Ljava/lang/String;
    .end local v30    # "phase2s":[Ljava/lang/String;
    .end local v34    # "prioritys":[Ljava/lang/String;
    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v37    # "secures":[Ljava/lang/String;
    .end local v40    # "spnames":[Ljava/lang/String;
    .end local v43    # "ssids":[Ljava/lang/String;
    .end local v46    # "wepkeys":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    goto/16 :goto_4

    .line 1494
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 1414
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private makePrevNetworkName()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 1326
    .local v6, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .line 1327
    .local v7, "mPrevNetworkName":Ljava/lang/String;
    const-string v5, ""

    .line 1328
    .local v5, "mMCCMNC":Ljava/lang/String;
    const-string v8, ""

    .line 1330
    .local v8, "mSPName":Ljava/lang/String;
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1331
    const-string v11, "gsm.sim.operator.alpha"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1332
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makePrevNetworkName mMCCMNC = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSPName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1335
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v4, v11, :cond_2

    .line 1336
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mGeneralNwInfo[].getMCCMNC() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_1
    const-string v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1338
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1339
    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1340
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v7

    .line 1341
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPrevNetworkName(SPName) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    .end local v4    # "j":I
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3700()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1357
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1358
    const-string v11, "network={\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    networkname=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :cond_3
    const-string v11, "}\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1364
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1365
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1366
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "String mNetworkNameProfile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_4
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$1402(Ljava/io/File;)Ljava/io/File;

    .line 1369
    const/4 v2, 0x0

    .line 1370
    .local v2, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1371
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1374
    :cond_5
    :try_start_2
    new-instance v9, Ljava/io/File;

    const-string v11, "/data/misc/wifi"

    const-string v12, "prev_networkname.conf"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    .local v9, "profilefilepath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1376
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const-string v12, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1377
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v3, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1378
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1387
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    move-object v2, v3

    .line 1392
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v9    # "profilefilepath":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_7
    :goto_3
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiServiceImpl;->access$3702(Z)Z

    .line 1394
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_8
    return-void

    .line 1345
    .restart local v4    # "j":I
    :cond_9
    :try_start_5
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    .line 1346
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPrevNetworkName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1352
    .end local v4    # "j":I
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "makePrevNetworkName - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1335
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "j":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1361
    .end local v4    # "j":I
    :catch_1
    move-exception v0

    .line 1362
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "makePrevNetworkName -NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1388
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v9    # "profilefilepath":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 1389
    .local v1, "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1391
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1379
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v9    # "profilefilepath":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v11, "WifiService"

    const-string v12, "PrevNetworkName File Create Not Found "

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1387
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 1388
    :catch_4
    move-exception v1

    .line 1389
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1381
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1387
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 1388
    :catch_6
    move-exception v1

    .line 1389
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1383
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrevNetworkName create file failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1387
    if-eqz v2, :cond_7

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_3

    .line 1388
    :catch_8
    move-exception v1

    .line 1389
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1386
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1387
    :goto_7
    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 1390
    :cond_b
    :goto_8
    throw v11

    .line 1388
    :catch_9
    move-exception v1

    .line 1389
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v12, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1386
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v9    # "profilefilepath":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1383
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1381
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1379
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V
    .locals 6
    .param p1, "mAddApInfo"    # Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 1794
    const/4 v1, 0x0

    .line 1796
    .local v1, "mRes":I
    if-eqz p1, :cond_8

    .line 1797
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWifiVendorProfile: ssid is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1800
    .local v2, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1801
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1802
    const/4 v3, 0x2

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1803
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 1804
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1805
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1806
    :cond_1
    const-string v3, "WPA-EAP IEEE8021X"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1807
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1808
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1810
    :cond_2
    const-string v3, "NONE"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1811
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1813
    :cond_3
    const-string v3, "SIM"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1814
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1822
    :cond_4
    :goto_0
    const-string v3, "None"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1823
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1828
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1829
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1830
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1831
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 1832
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 1833
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->enableNetwork(IZ)Z

    .line 1839
    .end local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    :goto_2
    return-void

    .line 1815
    .restart local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const-string v3, "AKA"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1816
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1836
    .end local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiService"

    const-string v4, "addWifiVendorProfile - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1817
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :try_start_1
    const-string v3, "PEAP"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1818
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 1819
    :cond_b
    const-string v3, "TTLS"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1820
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 1824
    :cond_c
    const-string v3, "MSCHAPV2"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1825
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    .line 1826
    :cond_d
    const-string v3, "GTC"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1827
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public checkWifiVendorProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;Z)V
    .locals 4
    .param p1, "mAddApInfo"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .param p2, "bSetNetworkName"    # Z

    .prologue
    .line 1841
    if-eqz p2, :cond_0

    .line 1842
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    .line 1845
    :cond_0
    if-eqz p1, :cond_4

    .line 1846
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiService"

    const-string v3, "checkWifiVendorProfile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 1848
    if-nez p2, :cond_3

    .line 1849
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V

    .line 1847
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1853
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1854
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1855
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1865
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "WifiService"

    const-string v3, "checkWifiVendorProfile - NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    return-void

    .line 1858
    .restart local v1    # "i":I
    :cond_5
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1859
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 2

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_0

    .line 1291
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    .line 1297
    :goto_0
    return-object v0

    .line 1292
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1294
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1297
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostNetworkName()V
    .locals 2

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPostNetworkName:Z

    if-nez v0, :cond_2

    .line 1313
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiService"

    const-string v1, "getPostNetworkName: mPrevNetworkName reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1315
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1316
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1320
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPostNetworkName:Z

    .line 1322
    :cond_2
    return-void

    .line 1318
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiService"

    const-string v1, "getPostNetworkName: prev_networkname.conf file doesn\'t exist "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPrevNetworkName()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 2

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    if-eqz v0, :cond_0

    .line 1302
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    .line 1309
    :goto_0
    return-object v0

    .line 1303
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1305
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1308
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->makePrevNetworkName()V

    .line 1309
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 4

    .prologue
    .line 1276
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    .line 1286
    :goto_0
    return-object v0

    .line 1278
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1279
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    .line 1281
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 1282
    :cond_1
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1286
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0

    .line 1283
    :cond_3
    const-string v0, "Private"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mConfigPriorAp:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    goto :goto_1
.end method

.method public removeChangedWifiProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V
    .locals 13
    .param p1, "mRemoveApInfo"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 1871
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1872
    .local v7, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1873
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, ""

    .line 1874
    .local v5, "mKeymgmt":Ljava/lang/String;
    const-string v4, ""

    .line 1876
    .local v4, "mEap":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    .line 1878
    :try_start_0
    const-string v9, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz p1, :cond_d

    .line 1879
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeChangedWifiProfile: mRemoveApInfo.length ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_0
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_0
    array-length v9, p1

    if-ge v8, v9, :cond_d

    .line 1881
    if-eqz v1, :cond_c

    .line 1883
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1884
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1885
    :cond_2
    const-string v5, "WPA-EAP IEEE8021X"

    .line 1892
    :goto_2
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    .line 1893
    const-string v4, "SIM"

    .line 1901
    :goto_3
    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aget-object v10, p1, v8

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v9, p1, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v9, p1, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    aget-object v9, p1, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1903
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeChangedWifiProfile: remove wifi profile ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1905
    new-instance v9, Lcom/android/server/wifi/WifiNative;

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$4000(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1906
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v9, :cond_6

    .line 1907
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "WifiService"

    const-string v10, "isVendorSpecificSsid value reset to zero for remove wifi profile"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "vendor_spec_ssid"

    const-string v12, "0"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1910
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1913
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    .line 1914
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1915
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 1916
    const-string v5, ""

    .line 1917
    const-string v4, ""

    .line 1918
    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$2502(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1937
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "p":I
    :catch_0
    move-exception v2

    .line 1938
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v9, "WifiService"

    const-string v10, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_7
    :goto_4
    return-void

    .line 1886
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "p":I
    :cond_8
    :try_start_1
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1887
    const-string v5, "NONE"

    goto/16 :goto_2

    .line 1889
    :cond_9
    const-string v5, ""

    goto/16 :goto_2

    .line 1894
    :cond_a
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    .line 1895
    const-string v4, "AKA"

    goto/16 :goto_3

    .line 1897
    :cond_b
    const-string v4, ""

    goto/16 :goto_3

    .line 1880
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1924
    .end local v8    # "p":I
    :cond_d
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1925
    const-string v6, ""

    .line 1926
    .local v6, "mTempPrevNetworkName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 1927
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    .line 1928
    :cond_e
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeChangedWifiProfile: mMatchedNetworkName is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] and mTempPrevNetworkName is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_f
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1930
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$4100()Z

    move-result v9

    if-nez v9, :cond_7

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1931
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "WifiService"

    const-string v10, "As network changed, remove DefaultApCheck file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_10
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1933
    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$4102(Z)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
