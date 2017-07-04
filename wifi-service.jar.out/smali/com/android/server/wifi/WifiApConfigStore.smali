.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApConfigStore$ActiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$InactiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x3

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static final defaultPassword:Ljava/lang/String;

.field private static final errPWD:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static final errSSID:Ljava/lang/String; = "\t#ERROR#SSID#\n"


# instance fields
.field public allowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 63
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    .line 75
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    .line 78
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mDefaultPassword:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    const/4 v8, 0x0

    .line 90
    const-string v6, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 81
    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 82
    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 83
    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 85
    iput-object v8, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 86
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 87
    iput-object v8, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 93
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 94
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 95
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 97
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 98
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2G band allowed channels are:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    .line 104
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "channelList":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 106
    .local v5, "tmp":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "channelList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 5
    .param p1, "digit"    # I

    .prologue
    .line 679
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 680
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "imei":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getIMEI() imei"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 682
    :cond_0
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 684
    .local v1, "len":I
    if-nez p1, :cond_1

    .line 691
    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "len":I
    :goto_0
    return-object v0

    .line 686
    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_1
    if-lt v1, p1, :cond_3

    .line 687
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 689
    .end local v1    # "len":I
    :cond_2
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastIMEI(I)Ljava/lang/String;
    .locals 5
    .param p1, "digit"    # I

    .prologue
    .line 694
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 695
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "imei":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getLastIMEI() imei"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 697
    :cond_0
    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 699
    .local v1, "len":I
    if-nez p1, :cond_1

    .line 706
    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "len":I
    :goto_0
    return-object v0

    .line 701
    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_1
    if-lt v1, p1, :cond_3

    .line 702
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 704
    .end local v1    # "len":I
    :cond_2
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast2Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 650
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "mac":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getMacAddressLast2Digits() mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 652
    :cond_0
    if-eqz v1, :cond_1

    .line 653
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 655
    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 659
    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 657
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast3Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 638
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "mac":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getMacAddressLast3Digits() mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 640
    :cond_0
    if-eqz v1, :cond_1

    .line 641
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 643
    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 647
    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 645
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast4Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 625
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "mac":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getMacAddressLast4Digits() mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 627
    :cond_0
    if-eqz v1, :cond_1

    .line 628
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 630
    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 634
    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 632
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 709
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 712
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 713
    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 716
    :cond_0
    return-object v1
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "randomUUID":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom4Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 620
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "randomUUID":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom8Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 614
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "randomUUID":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    .line 735
    new-instance v0, Ljava/lang/String;

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, "alphabet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 737
    .local v2, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 739
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 740
    .local v3, "random":Ljava/util/Random;
    const-string v4, ""

    .line 741
    .local v4, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_1
    return-object v4
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 10
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    const-wide/16 v6, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 719
    if-nez p1, :cond_0

    .line 720
    const-string v4, ""

    .line 731
    :goto_0
    return-object v4

    .line 721
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 723
    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v6

    .line 726
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 727
    .local v3, "random":Ljava/util/Random;
    const/16 v2, 0xa

    .line 728
    .local v2, "maxValue":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 729
    mul-int/lit8 v2, v2, 0xa

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 730
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%%0%dd"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "format":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    .line 747
    new-instance v4, Ljava/lang/String;

    const-string v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 748
    .local v4, "sym":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 749
    .local v1, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 751
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 752
    .local v2, "random":Ljava/util/Random;
    const-string v3, ""

    .line 753
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_1
    return-object v3
.end method

.method private getTelephonyNumber(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "digit"    # I
    .param p2, "retry"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 662
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 663
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "min":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApConfigStore getTelephonyNumber() min:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 665
    :cond_0
    if-eqz v1, :cond_4

    .line 666
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 667
    .local v0, "len":I
    if-nez p2, :cond_3

    const-string v5, "000000"

    const/4 v6, 0x0

    if-le v3, v0, :cond_1

    move v3, v0

    :cond_1
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v4

    .line 676
    .end local v0    # "len":I
    .end local v1    # "min":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 669
    .restart local v0    # "len":I
    .restart local v1    # "min":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_2

    .line 671
    if-lt v0, p1, :cond_5

    .line 672
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 674
    .end local v0    # "len":I
    :cond_4
    const-string v3, "WifiApConfigStore"

    const-string v5, "Fail to get MSISDN"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v4

    .line 676
    goto :goto_0
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 112
    sget-boolean v1, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v1, "makeWifiApConfigStore()"

    invoke-static {v1}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 116
    .local v0, "s":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->start()V

    .line 117
    return-object v0
.end method

.method private parseSecProductFeaturePassword(Z)Ljava/lang/String;
    .locals 14
    .param p1, "retry"    # Z

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x0

    const-wide/16 v8, 0x1

    const/4 v7, 0x4

    .line 534
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApConfigStore parseSecProductFeaturePassword() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 535
    :cond_0
    const-string v5, "SamsungDefault"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v12, v13}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_1
    :goto_0
    return-object v0

    .line 537
    :cond_2
    const-string v5, "Random12Chars"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_3
    const-string v5, "Random8Chars"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 540
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom8Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_4
    const-string v5, "Min10Digits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 542
    invoke-direct {p0, v10, p1}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "telephonyNumber":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApConfigStore telephonyNumber:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 544
    :cond_5
    if-eqz v4, :cond_7

    .line 545
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 546
    :cond_6
    const/16 v5, 0xa

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v4

    .line 549
    goto :goto_0

    .line 550
    .end local v4    # "telephonyNumber":Ljava/lang/String;
    :cond_8
    const-string v5, "ModelWith4RandomDigits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom4Chars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 552
    :cond_9
    const-string v5, "IMEI5With5RandomDigits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 553
    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v11, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 557
    :cond_a
    const-string v5, "WifiApConfigStore"

    const-string v6, "Not generate default password : because imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 559
    .end local v0    # "imei":Ljava/lang/String;
    :cond_b
    const-string v5, "IMEILast8Digits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 560
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .restart local v0    # "imei":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 564
    const-string v5, "WifiApConfigStore"

    const-string v6, "Not generate default password : because imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v0, "XXXXXXXX"

    .line 567
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiApConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imei = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 569
    .end local v0    # "imei":Ljava/lang/String;
    :cond_c
    const-string v5, "VZWRandomRule"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 570
    invoke-direct {p0, v10, p1}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "mdn":Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 573
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 577
    .local v2, "seed":J
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 575
    .end local v2    # "seed":J
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .restart local v2    # "seed":J
    goto :goto_1

    .line 578
    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "seed":J
    :cond_e
    const-string v5, "UserDefined"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 579
    const-string v0, "\tUSER#DEFINED#PWD#\n"

    goto/16 :goto_0

    .line 581
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v12, v13}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "errString"    # Ljava/lang/String;
    .param p2, "flagErrorBreak"    # Z

    .prologue
    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v7, "ssid":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v1, Landroid/net/wifi/WifiApCust;->mDefaultSSID:Ljava/lang/String;

    .line 433
    .local v1, "defaultSsid":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v9, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiApConfigStore parseSecProductFeatureSsid() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 434
    :cond_0
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "customSSID":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v0

    if-ge v2, v9, :cond_18

    .line 436
    const-string v9, "Default"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 437
    iget-object v9, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v10, 0x10403af

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_1
    const-string v9, "ModelName"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 439
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 440
    :cond_2
    const-string v9, "Random4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 441
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 442
    :cond_3
    const-string v9, "Mac4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 443
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast4Digits()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "mac":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 445
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    :cond_4
    if-eqz p2, :cond_6

    .line 531
    .end local v4    # "mac":Ljava/lang/String;
    .end local p1    # "errString":Ljava/lang/String;
    :cond_5
    :goto_2
    return-object p1

    .line 449
    .restart local v4    # "mac":Ljava/lang/String;
    .restart local p1    # "errString":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    .end local v4    # "mac":Ljava/lang/String;
    :cond_7
    const-string v9, "Mac3Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 451
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast3Digits()Ljava/lang/String;

    move-result-object v4

    .line 452
    .restart local v4    # "mac":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 453
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 454
    :cond_8
    if-nez p2, :cond_5

    .line 457
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    .end local v4    # "mac":Ljava/lang/String;
    :cond_9
    const-string v9, "Mac2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 459
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast2Digits()Ljava/lang/String;

    move-result-object v4

    .line 460
    .restart local v4    # "mac":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 461
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 462
    :cond_a
    if-nez p2, :cond_5

    .line 465
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    .end local v4    # "mac":Ljava/lang/String;
    :cond_b
    const-string v9, "Min4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 467
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "min":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 469
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 470
    :cond_c
    if-nez p2, :cond_5

    .line 474
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 478
    .end local v5    # "min":Ljava/lang/String;
    :cond_d
    const-string v9, "Min2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 479
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v5

    .line 480
    .restart local v5    # "min":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 481
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 482
    :cond_e
    if-nez p2, :cond_5

    .line 485
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 486
    .end local v5    # "min":Ljava/lang/String;
    :cond_f
    const-string v9, "IMEILast2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 487
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "imei":Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 489
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 490
    :cond_10
    if-nez p2, :cond_5

    .line 493
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 494
    .end local v3    # "imei":Ljava/lang/String;
    :cond_11
    const-string v9, "IMEILast4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 495
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    .restart local v3    # "imei":Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 497
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 498
    :cond_12
    if-nez p2, :cond_5

    .line 501
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 502
    .end local v3    # "imei":Ljava/lang/String;
    :cond_13
    const-string v9, "Space"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 503
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 504
    :cond_14
    const-string v9, "BrandName"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 505
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, "temp":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 507
    const-string v9, "brand"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 509
    :cond_15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 511
    .end local v8    # "temp":Ljava/lang/String;
    :cond_16
    const-string v9, "ChameleonSSID"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 513
    const-string v9, "WifiApConfigStore"

    const-string v10, "updateHotspotS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v9, "WifiApConfigStore"

    const-string v10, "ChameleonSSID is null -> ModelName is used."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 523
    :cond_17
    aget-object v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 526
    :cond_18
    sget-boolean v9, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v9, :cond_19

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiApConfigStore parseSecProductFeatureSsid() ssid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 527
    :cond_19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-le v9, v10, :cond_1a

    .line 528
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "modifiedSsid":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 531
    .end local v6    # "modifiedSsid":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method private reGenerateAndWriteConfiguration()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 584
    const-string v2, "WifiApConfigStore"

    const-string v3, "Re-Generate SSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v2, "XXXX"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "defaultSSID":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 588
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 589
    const-string v2, "WifiApConfigStore"

    const-string v3, "KeyManagement.cardinality() >= 1 => clear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 592
    :cond_0
    const-string v2, "None"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 603
    :goto_0
    const-string v2, "XXXX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 606
    :cond_1
    return-void

    .line 595
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 596
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 598
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 600
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDefaultApConfiguration()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 389
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 390
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v2, ""

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 396
    :goto_0
    const-string v2, "None"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 411
    :goto_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 412
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 413
    const-string v2, "SPRINT"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/16 v2, 0x8

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 418
    :goto_2
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 423
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 428
    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 429
    return-void

    .line 394
    :cond_0
    const-string v2, "\t#ERROR#SSID#\n"

    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 401
    const-string v2, "\t#ERROR#SSID#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 403
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 404
    const-string v2, "UserDefined"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const-string v2, "\tUSER#DEFINED#PWD#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 407
    :cond_3
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 416
    .end local v1    # "password":Ljava/lang/String;
    :cond_4
    sget v2, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_2
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 335
    if-nez p1, :cond_1

    .line 336
    sget-boolean v4, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v4, "WifiApConfigStore writeApConfiguration() config is null."

    invoke-static {v4}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v4, :cond_2

    .line 341
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiApConfigStore writeApConfiguration() ssid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pwd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 343
    :cond_2
    const/4 v2, 0x0

    .line 345
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    if-eqz v3, :cond_4

    .line 349
    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 350
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 351
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 356
    :cond_3
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 357
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 358
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 359
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 360
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 362
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 365
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 366
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 367
    if-eqz v0, :cond_4

    .line 368
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 369
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    .end local v0    # "authType":I
    :cond_4
    if-eqz v3, :cond_6

    .line 378
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 379
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_0

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_0

    .line 373
    :catch_1
    move-exception v1

    .line 374
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    if-eqz v2, :cond_0

    .line 378
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 379
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 376
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_5

    .line 378
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 379
    :cond_5
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    .line 376
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 373
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public loadApConfiguration()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x3

    .line 226
    .local v5, "version":I
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 227
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 231
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 238
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 239
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 240
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 241
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 242
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v6, :cond_0

    .line 243
    sget v6, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 245
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 246
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 247
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 248
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 250
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 251
    .local v0, "authType":I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 252
    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 255
    :cond_1
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 256
    if-ge v5, v9, :cond_2

    .line 257
    const v6, 0x20019

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    :cond_2
    if-eqz v4, :cond_7

    .line 269
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 273
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_3
    :goto_0
    return-void

    .line 270
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 259
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-boolean v6, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_4
    if-ge v5, v9, :cond_5

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfigurationOldVer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    :goto_2
    if-eqz v3, :cond_3

    .line 269
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 270
    :catch_2
    move-exception v6

    goto :goto_0

    .line 264
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_6

    .line 269
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 270
    :cond_6
    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    .line 267
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 259
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :cond_7
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method loadApConfigurationOldVer()V
    .locals 10

    .prologue
    .line 276
    const-string v7, "WifiApConfigStore"

    const-string v8, "loadApConfigurationOldVer()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v3, 0x0

    .line 279
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 280
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 284
    .local v6, "version":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 286
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 287
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 288
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 289
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 290
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v7, :cond_0

    .line 291
    sget v7, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 293
    :cond_0
    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 294
    .local v5, "newConfigNum":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 295
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 296
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 304
    .local v0, "authType":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 305
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 306
    const-string v7, "WifiApConfigStore"

    const-string v8, " conf changed to wpa2 from wpa"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 314
    :cond_2
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 315
    const v7, 0x20019

    iget-object v8, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    if-eqz v4, :cond_7

    .line 322
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 326
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_3
    :goto_2
    return-void

    .line 297
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 298
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 299
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 300
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 316
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 317
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v2, "ignore":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_3
    :try_start_4
    const-string v7, "WifiApConfigStore"

    const-string v8, "loadApConfigurationOldVer() : IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    if-eqz v3, :cond_3

    .line 322
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 323
    :catch_1
    move-exception v7

    goto :goto_2

    .line 308
    .end local v2    # "ignore":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_5
    :try_start_6
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 320
    .end local v0    # "authType":I
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_4
    if-eqz v3, :cond_6

    .line 322
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 323
    :cond_6
    :goto_5
    throw v7

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :catch_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catch_3
    move-exception v8

    goto :goto_5

    .line 320
    :catchall_1
    move-exception v7

    goto :goto_4

    .line 316
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_7
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method
