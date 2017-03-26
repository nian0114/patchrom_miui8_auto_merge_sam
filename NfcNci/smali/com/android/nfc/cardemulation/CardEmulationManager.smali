.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.implements Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field OTHER_SUPPORT:Z

.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mAidDirty:Z

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field private mIsRoutingTableChanged:Z

.field mIsShowWarningPopup:Z

.field private mPaymentSelfChange:Z

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field private mProtoAndTechDirty:Z

.field private mProtoToRestore:Ljava/lang/String;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field private mSkipToVerification:Z

.field private mTechToRestore:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsRoutingTableChanged:Z

    .line 91
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoToRestore:Ljava/lang/String;

    .line 92
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mTechToRestore:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentSelfChange:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mSkipToVerification:Z

    .line 101
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcFeatureUtil;->supportOtherCategory()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    .line 104
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 106
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsShowWarningPopup:Z

    .line 108
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 111
    new-instance v0, Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RoutingEntryCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    .line 112
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->initialize()V

    .line 115
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 116
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 117
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v2, v3, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 120
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mSkipToVerification:Z

    .line 121
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 122
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mSkipToVerification:Z

    .line 123
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/nfc/cardemulation/CardEmulationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/CardEmulationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mSkipToVerification:Z

    return p1
.end method


# virtual methods
.method public adjustDefaultRoutes(II)V
    .locals 1
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->adjustDefaultRoutes(II)V

    .line 785
    return-void
.end method

.method public changeRoutingTable(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v7, 0x0

    .line 888
    sget-boolean v4, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CardEmulationManager"

    const-string v5, "changeRoutingTable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 892
    iput-boolean v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsRoutingTableChanged:Z

    .line 894
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v5, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoToRestore:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setTempRouting(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v5, "ROUTE_TO_LISTEN_TECH"

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mTechToRestore:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setTempRouting(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 897
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->invalidate()V

    .line 899
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->clearTable()V

    .line 901
    :cond_1
    const-string v4, "None"

    iput-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoToRestore:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mTechToRestore:Ljava/lang/String;

    .line 903
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v4, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 905
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isSupportAutoSwitching()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onAutoRoutingStateChanged(Z)V

    .line 953
    :goto_0
    return-void

    .line 910
    :cond_2
    iget-boolean v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsRoutingTableChanged:Z

    if-nez v4, :cond_3

    .line 911
    const-string v4, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoToRestore:Ljava/lang/String;

    .line 912
    const-string v4, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mTechToRestore:Ljava/lang/String;

    .line 914
    :cond_3
    sget-boolean v4, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "CardEmulationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mProtoToRestore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoToRestore:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTechToRestore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mTechToRestore:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsRoutingTableChanged:Z

    .line 919
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isSupportAutoSwitching()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 920
    invoke-virtual {p0, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onAutoRoutingStateChanged(Z)V

    .line 923
    :cond_5
    if-eqz p2, :cond_7

    .line 924
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v5, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {v4, v5, p2}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setTempRouting(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :goto_1
    if-eqz p3, :cond_8

    .line 929
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v5, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {v4, v5, p3}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setTempRouting(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :goto_2
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 934
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->invalidate()V

    .line 936
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->clearTable()V

    .line 940
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v3, "tempEnabledServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz p4, :cond_a

    .line 942
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 943
    .local v2, "service":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v4, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 944
    .local v0, "entry":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_9

    .line 945
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 926
    .end local v0    # "entry":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "service":Landroid/content/ComponentName;
    .end local v3    # "tempEnabledServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_7
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v5, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoToRestore:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setTempRouting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 931
    :cond_8
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v5, "ROUTE_TO_LISTEN_TECH"

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mTechToRestore:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setTempRouting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 947
    .restart local v0    # "entry":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "service":Landroid/content/ComponentName;
    .restart local v3    # "tempEnabledServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_9
    const-string v4, "CardEmulationManager"

    const-string v5, "Not installed service is included."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 952
    .end local v0    # "entry":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_a
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v4, p1, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    goto/16 :goto_0
.end method

.method public disableAutoRouting()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->disableAutoSwitching()V

    .line 847
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public enableAutoRouting()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->enableAutoSwitching()V

    .line 842
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcRoutingChanged()V

    .line 843
    return-void
.end method

.method public enableDisableTestMode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "nfcEeName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->enableDisableTestMode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->getRoutingDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 428
    const-string v3, "payment"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 429
    const-string v3, "CardEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowing defaults for category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-object v2

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_payment_default_component"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 437
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 438
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v2, v1

    .line 439
    goto :goto_0

    .line 441
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .end local v1    # "service":Landroid/content/ComponentName;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public getDefaultServiceInfo(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicServiceManagerInstance()Lcom/android/nfc/cardemulation/DynamicServiceManager;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getDynamicServiceManagerInstance()Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->getForegroundService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method public getPackageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getPackageList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRegisteredServices(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 856
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v8, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v6, "payment":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v4, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move-object v8, v9

    .line 880
    .end local v8    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_0
    return-object v8

    .line 862
    .restart local v8    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    iget-object v10, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v10, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    .line 863
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    move-object v8, v9

    .line 864
    goto :goto_0

    .line 865
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 866
    .local v7, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v3

    .line 867
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 869
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 870
    invoke-virtual {v7, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "packageName":Ljava/lang/String;
    const-string v9, "payment"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 873
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 874
    :cond_5
    const-string v9, "other"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 875
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 878
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_6
    const-string v9, "payment"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v9, "other"

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isRoutingTableChanged()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsRoutingTableChanged:Z

    return v0
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 469
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1

    .line 475
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onAidAddFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onAidAddFailed(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onAutoRoutingStateChanged(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->enableAutoRouting(Z)V

    .line 810
    return-void
.end method

.method public onDefaultRouteUpdated(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultRoute(I)V

    .line 806
    return-void
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 131
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    .line 132
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    .line 136
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "deactType"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated(I)V

    .line 140
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    .line 141
    return-void
.end method

.method public onNfcDisabled()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->onNfcDisabled()V

    .line 189
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 190
    return-void
.end method

.method public onNfcEnabled()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->onNfcEnabled()V

    .line 178
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 179
    return-void
.end method

.method public onNfcEnabled(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->onNfcEnabled()V

    .line 183
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setAidTableSize(I)V

    .line 184
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 185
    return-void
.end method

.method public onNfcRoutingChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "nfcEeName"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcFeatureUtil;->supportAutoSwitching()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    sget-boolean v5, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "CardEmulationManager"

    const-string v6, "temporarily disable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->disableAutoSwitching()V

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcFeatureUtil;->supportTechnologyChange()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isNfcTestMode()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 202
    :cond_2
    move-object v4, p2

    .line 204
    .local v4, "tech":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isNfcTestMode()Z

    move-result v5

    if-nez v5, :cond_9

    .line 207
    const-string v5, "DH"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    const-string v4, "UICC"

    .line 216
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v6, "ROUTE_TO_LISTEN_TECH"

    invoke-virtual {v5, v6, v4}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setRoutingDestination(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    .end local v4    # "tech":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const-string v6, "ROUTE_TO_LISTEN_PROTO_ISO_DEP"

    invoke-virtual {v5, v6, p2}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setRoutingDestination(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 221
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isChanged()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 222
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->invalidate()V

    .line 225
    iget-boolean v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    if-nez v5, :cond_6

    .line 228
    sget-boolean v5, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "CardEmulationManager"

    const-string v6, "Do not support Other Category"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcRoutingChanged()V

    .line 233
    :cond_6
    iget-boolean v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    if-eqz v5, :cond_8

    .line 235
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string v6, "other"

    invoke-virtual {v5, p1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 238
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-static {}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getInstance()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/NfcEeObject;->getID()I

    move-result v2

    .line 239
    .local v2, "nfcEeId":I
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v5, v2, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getServicesForEeType(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "defaultServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->clearTable()V

    .line 243
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string v6, "other"

    invoke-virtual {v5, p1, v1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->clearAndSetSelectedServices(ILjava/util/List;Ljava/lang/String;)Z

    .line 247
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isBufferFull()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 248
    sget-boolean v5, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "CardEmulationManager"

    const-string v6, "AID FULL due to payment when default route changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_7
    const/4 v5, 0x0

    const-string v6, "payment"

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 254
    .end local v1    # "defaultServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "nfcEeId":I
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_8
    return-void

    .line 213
    .end local v0    # "changed":Z
    .restart local v4    # "tech":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setNfcTestMode(Z)V

    goto :goto_0
.end method

.method public onOffHostAidSelected()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 145
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 774
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 775
    return-void
.end method

.method public onPreferredOtherServiceUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->verifyRouting()V

    .line 327
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 328
    return-void
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 759
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 760
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->verifyRouting()V

    .line 762
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentSelfChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CardEmulationManager"

    const-string v1, "paymet default is changed from verifyDefautls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "payment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 767
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentSelfChange:Z

    .line 769
    return-void
.end method

.method public onResultUpdated()Z
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isBufferFull()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 291
    .local v0, "success":Z
    :goto_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResultUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return v0

    .line 289
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSecureElementListenActivated()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/PreferredServices;->isNextTapOnHost()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/PreferredServices;->onSecureElementListenActivated()V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onSecureElementListenDeacitvaed()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->isNextTapOnHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onSecureElementListenDeactivated()V

    .line 164
    :cond_0
    return-void
.end method

.method public onServiceInstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 299
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CardEmulationManager"

    const-string v1, "we could not support AID full popup if auto swithcing is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 279
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->verifyRouting()V

    .line 282
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 283
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 169
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 170
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reRouteAllAids()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->reRouteAllAids()V

    .line 780
    return-void
.end method

.method public setDefaultRoute(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "routeType"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->setRoutingDestination(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    .line 457
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_payment_default_component"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 464
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 462
    :cond_3
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find default service to make default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public shouldUdateRouting()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mProtoAndTechDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidDirty:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsAutoRouting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isSupportAutoSwitching()Z

    move-result v0

    return v0
.end method

.method public updates()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "CardEmulationManager"

    const-string v1, "update protoocol , tech route"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEntryCache:Lcom/android/nfc/cardemulation/RoutingEntryCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RoutingEntryCache;->invalidate()V

    .line 794
    :cond_0
    return-void
.end method

.method verifyDefaults(ILjava/util/List;)V
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 333
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    const-string v7, "CardEmulationManager"

    const-string v8, "skip to default verification during Emenrgency Mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-boolean v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mSkipToVerification:Z

    if-eqz v7, :cond_2

    .line 339
    const-string v7, "CardEmulationManager"

    const-string v8, "Don\'t need to verfiy default payment(on init, register dynmaic aids)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-boolean v9, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mSkipToVerification:Z

    goto :goto_0

    .line 344
    :cond_2
    const-string v7, "payment"

    invoke-virtual {p0, p1, v7, v9}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 346
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "CardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    if-eqz v0, :cond_11

    .line 349
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    .line 350
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v6, :cond_4

    const-string v7, "payment"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 351
    :cond_4
    if-nez v6, :cond_7

    .line 352
    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service unexpectedly removed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 357
    .local v4, "numPaymentServices":I
    const/4 v3, 0x0

    .line 358
    .local v3, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 359
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v7, "payment"

    invoke-virtual {v5, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 361
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_2

    .line 353
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_7
    const-string v7, "payment"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 354
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service had payment category removed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 364
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v4    # "numPaymentServices":I
    :cond_8
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "CardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of payment services is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_9
    if-nez v4, :cond_b

    .line 367
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "CardEmulationManager"

    const-string v8, "Default removed, no services left."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_a
    const-string v7, "payment"

    invoke-virtual {p0, p1, v11, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 370
    :cond_b
    if-ne v4, v10, :cond_e

    .line 372
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_c

    const-string v7, "CardEmulationManager"

    const-string v8, "Default removed, making remaining service default."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_c
    iget-boolean v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    if-eqz v7, :cond_d

    .line 375
    iput-boolean v10, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentSelfChange:Z

    .line 378
    :cond_d
    const-string v7, "payment"

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 380
    :cond_e
    if-le v4, v10, :cond_0

    .line 383
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_f

    const-string v7, "CardEmulationManager"

    const-string v8, "Default removed, asking user to pick."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_f
    const-string v7, "payment"

    invoke-virtual {p0, p1, v11, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 386
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v2, "intent":Landroid/content/Intent;
    const v7, 0x10008000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 393
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "numPaymentServices":I
    :cond_10
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CardEmulationManager"

    const-string v8, "Default payment service still ok."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_11
    const/4 v4, 0x0

    .line 399
    .restart local v4    # "numPaymentServices":I
    const/4 v3, 0x0

    .line 400
    .restart local v3    # "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 401
    .restart local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v7, "payment"

    invoke-virtual {v5, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 402
    add-int/lit8 v4, v4, 0x1

    .line 403
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_3

    .line 406
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_13
    if-le v4, v10, :cond_14

    .line 408
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CardEmulationManager"

    const-string v8, "No default set, more than one service left."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    :cond_14
    if-ne v4, v10, :cond_17

    .line 411
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_15

    const-string v7, "CardEmulationManager"

    const-string v8, "No default set, making single service default."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_15
    iget-boolean v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->OTHER_SUPPORT:Z

    if-eqz v7, :cond_16

    .line 414
    iput-boolean v10, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentSelfChange:Z

    .line 417
    :cond_16
    const-string v7, "payment"

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 421
    :cond_17
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CardEmulationManager"

    const-string v8, "No default set, last payment service removed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
