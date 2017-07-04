.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DAN_DELAY_TIMER:I = 0x1388

.field private static final DCN_HYST_TIMER:I = 0x3a98

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field private static final EVENT_DCN_TIMER_START:I = 0x7d0

.field private static final EVENT_DCN_TIMER_STOP:I = 0x7d1

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mDCNMessageTimer:Z

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field mLatestDataRadioTechnology:I

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field mPreferredNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mConfigNetworkTypeCapability:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    const/4 v3, 0x0

    .line 119
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 102
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 103
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 124
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 130
    const-string v0, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private PnnFromUicc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, "displayname":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 1478
    .local v3, "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_1

    .line 1479
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1480
    .local v2, "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    const-string v4, "gsm.operator.numeric.real"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1481
    .local v1, "realOperatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    if-eqz v4, :cond_0

    .line 1482
    invoke-virtual {v2, v1, v7, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 1483
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eons Name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    if-nez v0, :cond_1

    .line 1486
    const-string v0, "Roam"

    .line 1487
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EONS is null,so display = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    .end local v1    # "realOperatorNumeric":Ljava/lang/String;
    .end local v2    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_1
    return-object v0
.end method

.method private checkIsSprintSimCard()Z
    .locals 3

    .prologue
    .line 1467
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "simoperator":Ljava/lang/String;
    const-string v1, "310120"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "310000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "311490"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "311870"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "312530"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1470
    :cond_0
    const/4 v1, 0x1

    .line 1472
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDCNHystTimerRunning()Z
    .locals 1

    .prologue
    .line 1430
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    return v0
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return v1

    .line 1307
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 1309
    if-eqz p1, :cond_0

    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1314
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 1311
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1321
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTwochipDsdsOnRoaming()V
    .locals 3

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isTwochipDsdsOnRoamingModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "00000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1447
    :cond_2
    const-string v1, "ril.twochip.roaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_3
    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const-string v1, "455"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1458
    :cond_5
    const-string v1, "ril.twochip.roaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :cond_6
    const-string v1, "ril.twochip.roaming"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 136
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 137
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1420
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestDataRadioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 1332
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 1345
    :cond_0
    :goto_0
    return-object v0

    .line 1334
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 1337
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 148
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v9, :cond_1

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while being destroyed. Ignoring."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 296
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 156
    :sswitch_0
    const-string v9, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 157
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 158
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 162
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    const-string v9, "handleMessage EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 163
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 164
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 168
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-nez v9, :cond_9

    .line 172
    const-string v9, "IccRecords is not RuimRecords.."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 174
    const-string v9, "ACG"

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 175
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 176
    .local v2, "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_2

    .line 177
    const-string v9, "cdmaUiccApp is not Null."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 179
    .local v4, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_8

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object v6, v4

    .line 183
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 191
    :goto_2
    if-eqz v6, :cond_6

    .line 192
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportCSIM"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v9, :cond_5

    .line 196
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 197
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    .line 198
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 201
    sget-boolean v9, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->SHIP_BUILD:Z

    if-nez v9, :cond_4

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", MIN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", PRL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 205
    :cond_4
    iput-boolean v13, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    .line 208
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "airplaneModeState":I
    const-string v9, "3"

    const-string v10, "ril.otasp_state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eq v0, v13, :cond_6

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    .line 216
    .end local v0    # "airplaneModeState":I
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    .line 221
    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 225
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 179
    .restart local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 187
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    check-cast v6, Lcom/android/internal/telephony/uicc/RuimRecords;

    .restart local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    goto/16 :goto_2

    .line 229
    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    goto/16 :goto_0

    .line 232
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 233
    .local v3, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v9

    invoke-virtual {v9, v3, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v9, :cond_a

    .line 236
    const-string v9, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 238
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 242
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 240
    :cond_a
    :try_start_1
    const-string v9, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 246
    .end local v3    # "dds":I
    :sswitch_5
    const-string v9, "CdmaSST"

    const-string v10, "EVENT_DCN_TIMER expired"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 248
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v7

    .line 249
    .local v7, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v7, :cond_0

    .line 250
    const-string v9, "CdmaSST"

    const-string v10, "Sending domain change notification"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    goto/16 :goto_0

    .line 256
    .end local v7    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :sswitch_6
    const-string v9, "CdmaSST"

    const-string v10, "EVENT_DCN_TIMER Started"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-boolean v13, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 259
    const/16 v9, 0x7d1

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 264
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 266
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/16 v9, 0x15

    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 267
    .local v5, "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v9, v10, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 271
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "message":Landroid/os/Message;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 272
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 273
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-static {v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v9

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v10, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 275
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 280
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 282
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_b

    .line 283
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v9, v9, v12

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    .line 288
    :goto_4
    const/16 v9, 0x14

    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 289
    .restart local v5    # "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGlobalModeNetworkType()I

    move-result v8

    .line 291
    .local v8, "toggledNetworkType":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 285
    .end local v5    # "message":Landroid/os/Message;
    .end local v8    # "toggledNetworkType":I
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGlobalModeNetworkType()I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_4

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x13 -> :sswitch_9
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x1b -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x7d0 -> :sswitch_6
        0x7d1 -> :sswitch_5
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 31
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 305
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 306
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v27, v2

    check-cast v27, [Ljava/lang/String;

    .line 308
    .local v27, "states":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " states="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 312
    const/16 v19, 0x0

    .line 313
    .local v19, "newDataRAT":I
    const/16 v22, -0x1

    .line 315
    .local v22, "regState":I
    const/4 v8, -0x1

    .line 318
    .local v8, "cellId":I
    move-object/from16 v0, v27

    array-length v2, v0

    if-lez v2, :cond_2

    .line 320
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 324
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0x3

    move/from16 v0, v29

    if-lt v2, v0, :cond_0

    const/4 v2, 0x2

    aget-object v2, v27, v2

    if-eqz v2, :cond_0

    .line 325
    const/4 v2, 0x2

    aget-object v2, v27, v2

    const/16 v29, 0x10

    move/from16 v0, v29

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 330
    :cond_0
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    if-lt v2, v0, :cond_1

    const/4 v2, 0x3

    aget-object v2, v27, v2

    if-eqz v2, :cond_1

    .line 331
    const/4 v2, 0x3

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 337
    :cond_1
    :goto_0
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0xa

    move/from16 v0, v29

    if-lt v2, v0, :cond_2

    .line 344
    const/16 v21, 0x0

    .line 347
    .local v21, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 348
    const/4 v2, 0x0

    const/16 v29, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 361
    .local v3, "mcc":I
    :goto_1
    const/4 v2, 0x3

    :try_start_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    .line 371
    .local v4, "mnc":I
    :goto_2
    const/4 v2, 0x6

    :try_start_3
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    .line 378
    .local v7, "tac":I
    :goto_3
    const/4 v2, 0x7

    :try_start_4
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v6

    .line 385
    .local v6, "pci":I
    :goto_4
    const/16 v2, 0x8

    :try_start_5
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v5

    .line 392
    .local v5, "eci":I
    :goto_5
    const/16 v2, 0x9

    :try_start_6
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v9

    .line 400
    .local v9, "csgid":I
    :goto_6
    new-instance v2, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: mNewLteCellIdentity="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0xc

    move/from16 v0, v29

    if-lt v2, v0, :cond_2

    .line 409
    const/16 v2, 0xb

    :try_start_7
    aget-object v2, v27, v2

    if-eqz v2, :cond_2

    .line 410
    const/16 v2, 0xb

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 411
    .local v23, "snapshotStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setSnapshotStatus(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 428
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v9    # "csgid":I
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    .end local v23    # "snapshotStatus":I
    :cond_2
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v20

    .line 429
    .local v20, "oldDataRAT":I
    if-nez v20, :cond_3

    if-nez v19, :cond_5

    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    :cond_4
    const/16 v2, 0xe

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 435
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 438
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 439
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v10

    .line 440
    .local v10, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v10}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 444
    const-string v2, "SPR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v29, "gsm.network.type"

    invoke-static/range {v19 .. v19}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v29, "gsm.operator.ispsroaming"

    const-string v30, "true"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_8
    const-string v2, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_8

    .line 459
    shr-int/lit8 v12, v8, 0x8

    .line 460
    .local v12, "eNbId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v2, v0, :cond_8

    const v2, 0xfa000

    if-lt v12, v2, :cond_8

    const v2, 0xfffff

    if-gt v12, v2, :cond_8

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "LTE Femtocell - eNB ID: "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setFemtocellIndicator(I)V

    .line 468
    .end local v12    # "eNbId":I
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " regState="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " dataRadioTechnology="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 528
    .end local v8    # "cellId":I
    .end local v10    # "dataRegState":I
    .end local v19    # "newDataRAT":I
    .end local v20    # "oldDataRAT":I
    .end local v22    # "regState":I
    .end local v27    # "states":[Ljava/lang/String;
    :cond_9
    :goto_9
    return-void

    .line 333
    .restart local v8    # "cellId":I
    .restart local v19    # "newDataRAT":I
    .restart local v22    # "regState":I
    .restart local v27    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 334
    .local v13, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    .end local v13    # "ex":Ljava/lang/NumberFormatException;
    .restart local v21    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 351
    .local v11, "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 352
    const/4 v2, 0x0

    const/16 v29, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v3

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 353
    .end local v3    # "mcc":I
    :catch_2
    move-exception v13

    .line 354
    .local v13, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad mcc operatorNumeric="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " ex="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 356
    const-string v21, ""

    .line 357
    const v3, 0x7fffffff

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 362
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 363
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad mnc operatorNumeric="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 365
    const v4, 0x7fffffff

    .restart local v4    # "mnc":I
    goto/16 :goto_2

    .line 372
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    .line 373
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad tac states[6]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0x6

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 375
    const v7, 0x7fffffff

    .restart local v7    # "tac":I
    goto/16 :goto_3

    .line 379
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 380
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad pci states[7]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0x7

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 382
    const v6, 0x7fffffff

    .restart local v6    # "pci":I
    goto/16 :goto_4

    .line 386
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v11

    .line 387
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad eci states[8]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0x8

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 389
    const v5, 0x7fffffff

    .restart local v5    # "eci":I
    goto/16 :goto_5

    .line 393
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    .line 397
    .restart local v11    # "e":Ljava/lang/Exception;
    const v9, 0x7fffffff

    .restart local v9    # "csgid":I
    goto/16 :goto_6

    .line 413
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v11

    .line 414
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad snapstatus states[11]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0xb

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 453
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v9    # "csgid":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "dataRegState":I
    .restart local v20    # "oldDataRAT":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v29, "gsm.operator.ispsroaming"

    const-string v30, "false"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 473
    .end local v8    # "cellId":I
    .end local v10    # "dataRegState":I
    .end local v19    # "newDataRAT":I
    .end local v20    # "oldDataRAT":I
    .end local v22    # "regState":I
    .end local v27    # "states":[Ljava/lang/String;
    :cond_b
    const/16 v2, 0xe

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    .line 475
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v16, v2

    check-cast v16, [I

    .line 480
    .local v16, "ints":[I
    const-string v2, "SKT"

    const-string v29, "EUR"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "KTT"

    const-string v29, "EUR"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "LGT"

    const-string v29, "EUR"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "KOO"

    const-string v29, "EUR"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 484
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/4 v2, 0x0

    aget v2, v16, v2

    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v2, v0, :cond_d

    const/4 v2, 0x0

    aget v2, v16, v2

    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v2, v0, :cond_12

    :cond_d
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 489
    :goto_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v29, "CscFeature_RIL_SupportAllRat"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v29, "CscFeature_RIL_Support75Mode"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_10

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    const-string v29, "persist.radio.multisim.stackid"

    const-string v30, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 494
    .local v26, "stackId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    const-string v29, "ril.ICC_TYPE"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 495
    .local v14, "iccType":Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "3"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "4"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 496
    :cond_f
    const-string v2, "Manual Selection with CTC card"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 498
    new-instance v15, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.ACTION_SIXMODE_MANUAL_SELECTION"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 505
    .end local v14    # "iccType":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v26    # "stackId":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v29, "CscFeature_RIL_NetworkInfoRat"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v28

    .line 507
    .local v28, "subId":I
    invoke-static/range {v28 .. v28}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 509
    .local v25, "sp1":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 511
    .local v17, "network_selection_key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_name_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 513
    .local v18, "network_selection_name_key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 515
    :cond_11
    const-string v2, "update manual selection mode to auto."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 517
    .local v24, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 518
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_name_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_9

    .line 484
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "network_selection_key":Ljava/lang/String;
    .end local v18    # "network_selection_name_key":Ljava/lang/String;
    .end local v24    # "sp":Landroid/content/SharedPreferences;
    .end local v25    # "sp1":Landroid/content/SharedPreferences;
    .end local v28    # "subId":I
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 486
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/4 v2, 0x0

    aget v2, v16, v2

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v2, v0, :cond_14

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    goto/16 :goto_b

    :cond_14
    const/4 v2, 0x0

    goto :goto_c

    .line 526
    .end local v16    # "ints":[I
    :cond_15
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_9
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1281
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return v0

    .line 1287
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1289
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->hasPsAutomaticCallOnly()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallTracker;->mSkipDisableDataConnection:Z

    if-nez v1, :cond_0

    .line 1293
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1410
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1415
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/16 v4, 0xe

    .line 1253
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1258
    const/4 p2, 0x1

    .line 1260
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 1262
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 1263
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1264
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    .line 1265
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    .line 1266
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 1269
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 1274
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    .line 1275
    return v1

    .line 1274
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pollState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 532
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aput v4, v1, v4

    .line 535
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 573
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 595
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 599
    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 606
    :cond_1
    :goto_1
    return-void

    .line 537
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 540
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 546
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdgOnAirplaneMode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 550
    .local v0, "servceState":Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 552
    const-string v1, "EPDG requires polling state when WiFi connected even in RADIO_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v0    # "servceState":Landroid/telephony/ServiceState;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 558
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 560
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 72

    .prologue
    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateRoamingState()V

    .line 612
    sget-boolean v65, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v65, :cond_0

    const-string v65, "telephony.test.forceRoaming"

    const/16 v66, 0x0

    invoke-static/range {v65 .. v66}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    if-eqz v65, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    const/16 v66, 0x1

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    const/16 v66, 0x1

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 617
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-nez v65, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v65

    const/16 v66, 0x1

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_49

    .line 624
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setLteImsVoiceAvail(I)V

    .line 630
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 631
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, "] newSS=["

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, "]"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-eqz v65, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-nez v65, :cond_4a

    const/16 v34, 0x1

    .line 636
    .local v34, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-nez v65, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-eqz v65, :cond_4b

    const/16 v29, 0x1

    .line 639
    .local v29, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-eqz v65, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-nez v65, :cond_4c

    const/16 v21, 0x1

    .line 643
    .local v21, "hasCdmaDataConnectionAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-nez v65, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-eqz v65, :cond_4d

    const/16 v23, 0x1

    .line 647
    .local v23, "hasCdmaDataConnectionDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_4e

    const/16 v22, 0x1

    .line 650
    .local v22, "hasCdmaDataConnectionChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_4f

    const/16 v35, 0x1

    .line 653
    .local v35, "hasVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_50

    const/16 v26, 0x1

    .line 656
    .local v26, "hasDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_51

    const/16 v24, 0x1

    .line 658
    .local v24, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v65

    if-nez v65, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v65

    if-eqz v65, :cond_52

    const/16 v37, 0x1

    .line 660
    .local v37, "hasVoiceRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v65

    if-eqz v65, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v65

    if-nez v65, :cond_53

    const/16 v36, 0x1

    .line 662
    .local v36, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v65

    if-nez v65, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v65

    if-eqz v65, :cond_54

    const/16 v28, 0x1

    .line 664
    .local v28, "hasDataRoamingOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v65

    if-eqz v65, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v65

    if-nez v65, :cond_55

    const/16 v27, 0x1

    .line 666
    .local v27, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_56

    const/16 v30, 0x1

    .line 669
    .local v30, "hasLocationChanged":Z
    :goto_d
    const/16 v25, 0x0

    .line 670
    .local v25, "hasCheckDAN":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    .line 671
    .local v6, "NVT":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v9

    .line 675
    .local v9, "PVT":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mForceHasChanged:Z

    move/from16 v65, v0

    if-eqz v65, :cond_2

    .line 676
    const/16 v24, 0x1

    .line 677
    const/16 v65, 0x0

    move/from16 v0, v65

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mForceHasChanged:Z

    .line 678
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "Change hasChanged to "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 683
    :cond_2
    const/16 v33, 0x0

    .line 684
    .local v33, "hasPlmnChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v65

    if-eqz v65, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v65

    if-eqz v65, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v65

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_3

    .line 685
    const/16 v33, 0x1

    .line 689
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-nez v65, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_57

    :cond_5
    const/16 v19, 0x1

    .line 696
    .local v19, "has4gHandoff":Z
    :goto_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_a

    .line 697
    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_58

    :cond_9
    const/16 v19, 0x1

    .line 708
    :cond_a
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_59

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_59

    const/16 v32, 0x1

    .line 714
    .local v32, "hasMultiApnSupport":Z
    :goto_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_d

    .line 715
    if-nez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_5a

    :cond_c
    const/16 v32, 0x1

    .line 720
    :cond_d
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x4

    move/from16 v0, v65

    move/from16 v1, v66

    if-lt v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0x8

    move/from16 v0, v65

    move/from16 v1, v66

    if-gt v0, v1, :cond_5b

    const/16 v31, 0x1

    .line 725
    .local v31, "hasLostMultiApnSupport":Z
    :goto_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SmsCml"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_5c

    .line 746
    :cond_e
    :goto_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_f

    const-string v65, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_f

    .line 748
    if-nez v9, :cond_f

    if-eqz v6, :cond_f

    const-string v65, "1"

    const-string v66, "persist.radio.sent.dan_sms"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_f

    .line 751
    const/16 v25, 0x1

    .line 756
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    const-string v66, "phone"

    invoke-virtual/range {v65 .. v66}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/telephony/TelephonyManager;

    .line 760
    .local v62, "tm":Landroid/telephony/TelephonyManager;
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "pollStateDone: hasRegistered="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasDeegistered="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasChanged="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasVoiceRoamingOn="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasVoiceRoamingOff="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasDataRoamingOn="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasDataRoamingOff="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasLocationChanged="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " has4gHandoff = "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " LatestDataRadioTechnology="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasMultiApnSupport="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " hasLostMultiApnSupport="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_11

    .line 784
    :cond_10
    const v65, 0xc3c4

    const/16 v66, 0x4

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v68

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    aput-object v68, v66, v67

    const/16 v67, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v68

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    aput-object v68, v66, v67

    const/16 v67, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v68

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    aput-object v68, v66, v67

    const/16 v67, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v68

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    aput-object v68, v66, v67

    invoke-static/range {v65 .. v66}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 788
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isUsaCdmaModel()Z

    move-result v65

    if-eqz v65, :cond_12

    if-eqz v32, :cond_12

    .line 789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v65, v0

    const/16 v66, 0x4

    move/from16 v0, v65

    move/from16 v1, v66

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v65, v0

    const/16 v66, 0x8

    move/from16 v0, v65

    move/from16 v1, v66

    if-gt v0, v1, :cond_12

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v65, v0

    const-string v66, "MultiApnSupport"

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 795
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isUsaCdmaModel()Z

    move-result v65

    if-eqz v65, :cond_14

    if-eqz v31, :cond_14

    .line 796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v65, v0

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v65, v0

    const/16 v66, 0xd

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v65, v0

    const/16 v66, 0x12

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_14

    .line 801
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v65, v0

    const-string v66, "LostMultiApnSupport"

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 803
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_14

    const-string v65, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_14

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v58

    .line 806
    .local v58, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    const/4 v13, 0x0

    .line 807
    .local v13, "canSend":Z
    const/16 v42, 0x0

    .line 808
    .local v42, "isHybrid":Z
    if-eqz v58, :cond_14

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v65

    if-eqz v65, :cond_5e

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/LegacyIms;->dcnAvailability()Z

    move-result v13

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/LegacyIms;->isHybridVolte()Z

    move-result v42

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/LegacyIms;->clearVolteRegistered()V

    .line 814
    if-eqz v13, :cond_14

    .line 815
    const-string v65, "CdmaSST"

    const-string v66, "Sending domain change notification"

    invoke-static/range {v65 .. v66}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/16 v65, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 817
    if-eqz v42, :cond_14

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/LegacyIms;->requestInitialImsRegistration()V

    .line 831
    .end local v13    # "canSend":Z
    .end local v42    # "isHybrid":Z
    .end local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_14
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    if-eqz v65, :cond_15

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    move/from16 v0, v65

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    .line 837
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    .line 838
    .local v63, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 839
    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v59, v0

    .line 844
    .local v59, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 845
    move-object/from16 v0, v59

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 849
    if-eqz v35, :cond_17

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 851
    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_17

    .line 855
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const-string v66, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v67

    invoke-static/range {v67 .. v67}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v65 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_17
    if-eqz v26, :cond_19

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v66

    move-object/from16 v0, v62

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 863
    const/16 v65, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_18

    .line 865
    const-string v65, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 868
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_5f

    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_5f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_5f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_5f

    .line 873
    const/16 v65, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->onSignalStrengthResult(Z)Z

    .line 881
    :cond_19
    :goto_15
    if-eqz v34, :cond_1a

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 885
    :cond_1a
    if-eqz v24, :cond_38

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v65, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v65

    if-nez v65, :cond_60

    const/16 v20, 0x0

    .line 888
    .local v20, "hasBrandOverride":Z
    :goto_16
    if-nez v20, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v65

    if-eqz v65, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    move-result v65

    if-eqz v65, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v65

    const v66, 0x11200b7

    invoke-virtual/range {v65 .. v66}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v65

    if-eqz v65, :cond_67

    .line 893
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v17

    .line 896
    .local v17, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-nez v65, :cond_62

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v17

    .line 913
    :cond_1c
    :goto_17
    const/16 v64, 0x1

    .line 915
    .local v64, "useERItext":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const/16 v65, 0xa

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-eqz v65, :cond_1d

    const/16 v64, 0x0

    .line 917
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_ExceptionSid"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_1e

    const/16 v64, 0x0

    .line 918
    :cond_1e
    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_1f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_1f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_20

    .line 922
    :cond_1f
    const/16 v64, 0x0

    .line 924
    :cond_20
    if-eqz v64, :cond_65

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 953
    .end local v17    # "eriText":Ljava/lang/String;
    .end local v64    # "useERItext":Z
    :cond_21
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v65, v0

    if-eqz v65, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v65

    sget-object v66, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v65

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    if-eqz v65, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-nez v65, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_24

    .line 961
    const/16 v55, 0x0

    .line 963
    .local v55, "showSpn":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportCSIM"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    move/from16 v65, v0

    if-eqz v65, :cond_23

    .line 967
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    check-cast v65, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v55

    .line 971
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v38

    .line 973
    .local v38, "iconIndex":I
    if-eqz v55, :cond_24

    const/16 v65, 0x1

    move/from16 v0, v38

    move/from16 v1, v65

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v66

    move-object/from16 v0, p0

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v65

    if-eqz v65, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    if-eqz v65, :cond_24

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const/16 v65, 0xa

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-nez v65, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const/16 v65, 0xb

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-nez v65, :cond_24

    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_24

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 984
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "Set OperatorAlphaLong: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, ", Cause: SPN"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 990
    .end local v38    # "iconIndex":I
    .end local v55    # "showSpn":Z
    :cond_24
    const-string v65, "SPR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_29

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v16

    .line 992
    .local v16, "displayname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v65

    if-nez v65, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v65

    if-eqz v65, :cond_68

    :cond_26
    const/16 v65, 0x1

    :goto_19
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v43

    .line 997
    .local v43, "isLteRoam":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v65

    if-nez v65, :cond_6a

    .line 998
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->checkIsSprintSimCard()Z

    move-result v65

    if-eqz v65, :cond_69

    .line 999
    sget-object v65, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_ALPHA:Ljava/lang/String;

    const-string v66, ""

    invoke-static/range {v65 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1000
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "sprint sim + home displayname= "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1012
    :cond_27
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    const/16 v65, 0x6

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-eqz v65, :cond_28

    const-string v65, "Chameleon"

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_28

    .line 1013
    const-string v16, "Samsung"

    .line 1015
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1020
    .end local v16    # "displayname":Ljava/lang/String;
    .end local v43    # "isLteRoam":Ljava/lang/Boolean;
    :cond_29
    const-string v65, "LRA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_2a

    const-string v65, "TFN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2c

    .line 1021
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v65

    if-nez v65, :cond_2c

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v65

    if-eqz v65, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v65

    const/16 v66, 0x2

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_6b

    .line 1023
    :cond_2b
    const-string v65, "Device is in roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    const-string v66, "Roaming"

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1034
    :cond_2c
    :goto_1b
    const-string v65, "TFN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2e

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v65

    if-nez v65, :cond_2e

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v65

    const/16 v66, 0x2

    move/from16 v0, v65

    move/from16 v1, v66

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v65

    if-nez v65, :cond_6c

    .line 1037
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    const-string v66, "Roaming"

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1046
    :cond_2e
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v62

    move/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v65

    move-object/from16 v0, v62

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v51

    .line 1049
    .local v51, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v49

    .line 1051
    .local v49, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_2f

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v56

    .line 1053
    .local v56, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v49

    .line 1055
    .end local v56    # "sid":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v65

    move-object/from16 v0, v62

    move/from16 v1, v65

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v51

    move-object/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1059
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_6d

    .line 1060
    const-string v65, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v65

    const-string v66, ""

    move-object/from16 v0, v62

    move/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1062
    const/16 v65, 0x0

    move/from16 v0, v65

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 1098
    :cond_30
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v65

    if-nez v65, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v65

    if-eqz v65, :cond_6f

    :cond_31
    const/16 v65, 0x1

    :goto_1e
    move-object/from16 v0, v62

    move/from16 v1, v66

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 1101
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_32

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_33

    .line 1104
    :cond_32
    const-string v57, "false"

    .line 1105
    .local v57, "sixmodeslave":Ljava/lang/String;
    const-string v65, "false"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    const-string v67, "gsm.operator.isroaming"

    const-string v68, "false"

    invoke-virtual/range {v66 .. v68}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_33

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v65

    const-string v66, "IS_CTC"

    const/16 v67, 0x0

    invoke-static/range {v65 .. v67}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    .line 1107
    .local v44, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v65

    const-string v66, "IS_CTC2"

    const/16 v67, 0x0

    invoke-static/range {v65 .. v67}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .line 1108
    .local v45, "isctc2":I
    const/16 v65, 0x1

    move/from16 v0, v44

    move/from16 v1, v65

    if-ne v0, v1, :cond_33

    const/16 v65, 0x1

    move/from16 v0, v45

    move/from16 v1, v65

    if-ne v0, v1, :cond_33

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const-string v66, "persist.radio.multisim.stackid"

    const-string v67, "-1"

    invoke-virtual/range {v65 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    const/16 v66, 0x1

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_33

    .line 1110
    const-string v65, "true"

    .line 1118
    .end local v44    # "isctc":I
    .end local v45    # "isctc2":I
    .end local v57    # "sixmodeslave":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v54

    .line 1119
    .local v54, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const-string v66, "ril.servicestate"

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v65 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 1123
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "Broadcasting ServiceState : "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v65

    const/16 v66, 0x1

    move/from16 v0, v65

    move/from16 v1, v66

    if-le v0, v1, :cond_34

    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_34

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setTwochipDsdsOnRoaming()V

    .line 1128
    :cond_34
    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_35

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_35

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_36

    .line 1132
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getState()I

    move-result v66

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    .line 1134
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v65

    if-nez v65, :cond_38

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v50

    .line 1139
    .local v50, "operatorNumericForTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    const/16 v65, 0x7

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-eqz v65, :cond_37

    .line 1140
    const-string v65, "gsm.operator.numeric.real"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v66

    invoke-static/range {v65 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1142
    :cond_37
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->CalibrationTimezoneUsingMcc(Ljava/lang/String;)V

    .line 1147
    .end local v20    # "hasBrandOverride":Z
    .end local v49    # "operatorNumeric":Ljava/lang/String;
    .end local v50    # "operatorNumericForTimezone":Ljava/lang/String;
    .end local v51    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v54    # "serviceStateForProperty":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const/16 v65, 0x1

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-eqz v65, :cond_39

    .line 1148
    const-string v65, "ril.cdma.inecmmode"

    const-string v66, "false"

    invoke-static/range {v65 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1149
    .local v39, "inEcm":Ljava/lang/String;
    const-string v65, "true"

    move-object/from16 v0, v65

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_39

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v65

    const/16 v66, 0x1

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_71

    .line 1151
    const/16 v65, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hasMessages(I)Z

    move-result v65

    if-nez v65, :cond_70

    .line 1152
    const/16 v65, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    const-wide/16 v66, 0x38a4

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1153
    const-string v65, "Start the ExitEmergencyCallbackMode timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1165
    .end local v39    # "inEcm":Ljava/lang/String;
    :cond_39
    :goto_1f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_3b

    const-string v65, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v66, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMainOperatorName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_3b

    .line 1167
    if-eqz v25, :cond_3b

    .line 1168
    const/16 v65, 0x4

    move/from16 v0, v65

    if-lt v6, v0, :cond_72

    const/16 v65, 0x6

    move/from16 v0, v65

    if-gt v6, v0, :cond_72

    const/16 v40, 0x1

    .line 1170
    .local v40, "is1xVD":Z
    :goto_20
    if-eqz v40, :cond_3a

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v58

    .line 1172
    .restart local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v58, :cond_3a

    .line 1173
    const-string v65, "CdmaSST"

    const-string v66, "Send DAN - Stop (reboot or airplane mode)"

    invoke-static/range {v65 .. v66}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/16 v65, 0x20

    move-object/from16 v0, v58

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 1177
    .end local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_3a
    const-string v65, "persist.radio.sent.dan_sms"

    const-string v66, "0"

    invoke-static/range {v65 .. v66}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .end local v40    # "is1xVD":Z
    :cond_3b
    if-nez v21, :cond_3c

    if-eqz v19, :cond_3d

    .line 1183
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1186
    :cond_3d
    if-eqz v23, :cond_3e

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1190
    :cond_3e
    if-nez v22, :cond_3f

    if-eqz v26, :cond_40

    .line 1191
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1192
    const/16 v65, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v66

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_73

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const-string v66, "iwlanAvailable"

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1200
    :cond_40
    :goto_21
    if-eqz v37, :cond_41

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1204
    :cond_41
    if-eqz v36, :cond_42

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1208
    :cond_42
    if-eqz v28, :cond_43

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1212
    :cond_43
    if-eqz v27, :cond_44

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1216
    :cond_44
    if-eqz v30, :cond_45

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1221
    :cond_45
    if-eqz v33, :cond_46

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1226
    :cond_46
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v12, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v66, v0

    monitor-enter v66

    .line 1228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v15, Landroid/telephony/CellInfoLte;

    .line 1230
    .local v15, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_74

    const/4 v14, 0x1

    .line 1231
    .local v14, "cidChanged":Z
    :goto_22
    if-nez v34, :cond_47

    if-nez v29, :cond_47

    if-eqz v14, :cond_48

    .line 1233
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v68

    const-wide/16 v70, 0x3e8

    mul-long v60, v68, v70

    .line 1234
    .local v60, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    if-nez v65, :cond_75

    const/16 v53, 0x1

    .line 1235
    .local v53, "registered":Z
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 1237
    move/from16 v0, v53

    invoke-virtual {v15, v0}, Landroid/telephony/CellInfoLte;->setRegistered(Z)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    invoke-virtual {v15, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 1240
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v67, "pollStateDone: hasRegistered="

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v67, " hasDeregistered="

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v67, " cidChanged="

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v67, " mCellInfo="

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    .end local v53    # "registered":Z
    .end local v60    # "timeStamp":J
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 1248
    monitor-exit v66
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    return-void

    .line 626
    .end local v6    # "NVT":I
    .end local v9    # "PVT":I
    .end local v12    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v14    # "cidChanged":Z
    .end local v15    # "cil":Landroid/telephony/CellInfoLte;
    .end local v19    # "has4gHandoff":Z
    .end local v21    # "hasCdmaDataConnectionAttached":Z
    .end local v22    # "hasCdmaDataConnectionChanged":Z
    .end local v23    # "hasCdmaDataConnectionDetached":Z
    .end local v24    # "hasChanged":Z
    .end local v25    # "hasCheckDAN":Z
    .end local v26    # "hasDataRadioTechnologyChanged":Z
    .end local v27    # "hasDataRoamingOff":Z
    .end local v28    # "hasDataRoamingOn":Z
    .end local v29    # "hasDeregistered":Z
    .end local v30    # "hasLocationChanged":Z
    .end local v31    # "hasLostMultiApnSupport":Z
    .end local v32    # "hasMultiApnSupport":Z
    .end local v33    # "hasPlmnChanged":Z
    .end local v34    # "hasRegistered":Z
    .end local v35    # "hasVoiceRadioTechnologyChanged":Z
    .end local v36    # "hasVoiceRoamingOff":Z
    .end local v37    # "hasVoiceRoamingOn":Z
    .end local v59    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v62    # "tm":Landroid/telephony/TelephonyManager;
    .end local v63    # "tss":Landroid/telephony/ServiceState;
    :cond_49
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "Update LteImsVoiceAvail: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, " (DataRegState: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, ", DataRadioTechnology: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, ", SnapshotStatus: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, ")"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_4a
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 636
    .restart local v34    # "hasRegistered":Z
    :cond_4b
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 639
    .restart local v29    # "hasDeregistered":Z
    :cond_4c
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 643
    .restart local v21    # "hasCdmaDataConnectionAttached":Z
    :cond_4d
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 647
    .restart local v23    # "hasCdmaDataConnectionDetached":Z
    :cond_4e
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 650
    .restart local v22    # "hasCdmaDataConnectionChanged":Z
    :cond_4f
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 653
    .restart local v35    # "hasVoiceRadioTechnologyChanged":Z
    :cond_50
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 656
    .restart local v26    # "hasDataRadioTechnologyChanged":Z
    :cond_51
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 658
    .restart local v24    # "hasChanged":Z
    :cond_52
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 660
    .restart local v37    # "hasVoiceRoamingOn":Z
    :cond_53
    const/16 v36, 0x0

    goto/16 :goto_a

    .line 662
    .restart local v36    # "hasVoiceRoamingOff":Z
    :cond_54
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 664
    .restart local v28    # "hasDataRoamingOn":Z
    :cond_55
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 666
    .restart local v27    # "hasDataRoamingOff":Z
    :cond_56
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 689
    .restart local v6    # "NVT":I
    .restart local v9    # "PVT":I
    .restart local v25    # "hasCheckDAN":Z
    .restart local v30    # "hasLocationChanged":Z
    .restart local v33    # "hasPlmnChanged":Z
    :cond_57
    const/16 v19, 0x0

    goto/16 :goto_e

    .line 697
    .restart local v19    # "has4gHandoff":Z
    :cond_58
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 708
    :cond_59
    const/16 v32, 0x0

    goto/16 :goto_10

    .line 715
    .restart local v32    # "hasMultiApnSupport":Z
    :cond_5a
    const/16 v32, 0x0

    goto/16 :goto_11

    .line 720
    :cond_5b
    const/16 v31, 0x0

    goto/16 :goto_12

    .line 725
    .restart local v31    # "hasLostMultiApnSupport":Z
    :cond_5c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_e

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v7

    .line 730
    .local v7, "NewRadioTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    .line 732
    .local v10, "PreRadioTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v8

    .line 733
    .local v8, "NewVoiceTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v11

    .line 735
    .local v11, "PreVoiceTech":I
    const/16 v65, 0x4

    move/from16 v0, v65

    if-lt v8, v0, :cond_5d

    const/16 v65, 0x8

    move/from16 v0, v65

    if-gt v8, v0, :cond_5d

    const/16 v41, 0x1

    .line 738
    .local v41, "is1xVoiceDomain":Z
    :goto_24
    if-eqz v41, :cond_e

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v58

    .line 740
    .restart local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/telephony/SMSDispatcher;->restartDanTimer()Z

    goto/16 :goto_13

    .line 735
    .end local v41    # "is1xVoiceDomain":Z
    .end local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_5d
    const/16 v41, 0x0

    goto :goto_24

    .line 822
    .end local v7    # "NewRadioTech":I
    .end local v8    # "NewVoiceTech":I
    .end local v10    # "PreRadioTech":I
    .end local v11    # "PreVoiceTech":I
    .restart local v13    # "canSend":Z
    .restart local v42    # "isHybrid":Z
    .restart local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v62    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5e
    const-string v65, "CdmaSST"

    const-string v66, "getLegacyIms is not exist"

    invoke-static/range {v65 .. v66}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 876
    .end local v13    # "canSend":Z
    .end local v42    # "isHybrid":Z
    .end local v58    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v59    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v63    # "tss":Landroid/telephony/ServiceState;
    :cond_5f
    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->onSignalStrengthResult(Z)Z

    goto/16 :goto_15

    .line 886
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v65, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v65

    if-eqz v65, :cond_61

    const/16 v20, 0x1

    goto/16 :goto_16

    :cond_61
    const/16 v20, 0x0

    goto/16 :goto_16

    .line 898
    .restart local v17    # "eriText":Ljava/lang/String;
    .restart local v20    # "hasBrandOverride":Z
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v65

    const/16 v66, 0x3

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_64

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    if-eqz v65, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v17

    .line 900
    :goto_25
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v65

    if-eqz v65, :cond_1c

    .line 903
    const-string v65, "ro.cdma.home.operator.alpha"

    invoke-static/range {v65 .. v65}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_17

    .line 899
    :cond_63
    const/16 v17, 0x0

    goto :goto_25

    .line 905
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v65

    if-eqz v65, :cond_1c

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    const v66, 0x10400d5

    invoke-virtual/range {v65 .. v66}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_17

    .line 928
    .restart local v64    # "useERItext":Z
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v65

    if-eqz v65, :cond_21

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v65

    const v66, 0x10400d5

    invoke-virtual/range {v65 .. v66}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 937
    const-string v65, "CTC"

    const-string v66, "ro.csc.sales_code"

    invoke-static/range {v66 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_66

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_66

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v65

    const-string v66, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v65 .. v66}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_66

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 943
    :cond_66
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "Set OperatorAlphaLong: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, ", Cause: ServiceState is "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/telephony/ServiceState;->getState()I

    move-result v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 947
    .end local v17    # "eriText":Ljava/lang/String;
    .end local v64    # "useERItext":Z
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const/16 v65, 0xb

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-eqz v65, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getState()I

    move-result v65

    if-nez v65, :cond_21

    .line 948
    const-string v65, "No ERI information"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v48

    .line 950
    .local v48, "mccMnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    const-string v66, ""

    const-string v67, ""

    move-object/from16 v0, v65

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 992
    .end local v48    # "mccMnc":Ljava/lang/String;
    .restart local v16    # "displayname":Ljava/lang/String;
    :cond_68
    const/16 v65, 0x0

    goto/16 :goto_19

    .line 1001
    .restart local v43    # "isLteRoam":Ljava/lang/Boolean;
    :cond_69
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->checkIsSprintSimCard()Z

    move-result v65

    if-nez v65, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v65

    const/16 v66, 0xe

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_27

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v65

    if-nez v65, :cond_27

    .line 1002
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->PnnFromUicc()Ljava/lang/String;

    move-result-object v16

    .line 1003
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "non sprint sim + LTE home displayname= "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1006
    :cond_6a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v65

    if-eqz v65, :cond_27

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->PnnFromUicc()Ljava/lang/String;

    move-result-object v16

    .line 1008
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "LTE roam displayname= "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1026
    .end local v16    # "displayname":Ljava/lang/String;
    .end local v43    # "isLteRoam":Ljava/lang/Boolean;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v65, v0

    if-eqz v65, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v65

    sget-object v66, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v65

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v65, v0

    if-eqz v65, :cond_2c

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1028
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "Set OperatorAlphaLong: "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string v66, ", Cause: SPN "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1038
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v65

    const/16 v66, 0x1

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_2e

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    const-string v66, " "

    invoke-virtual/range {v65 .. v66}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1064
    .restart local v49    # "operatorNumeric":Ljava/lang/String;
    .restart local v51    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_6d
    const-string v46, ""

    .line 1065
    .local v46, "isoCountryCode":Ljava/lang/String;
    const/16 v65, 0x0

    const/16 v66, 0x3

    move-object/from16 v0, v49

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    .line 1067
    .local v47, "mcc":Ljava/lang/String;
    const/16 v65, 0x0

    const/16 v66, 0x3

    :try_start_1
    move-object/from16 v0, v49

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v46

    .line 1075
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v65

    move-object/from16 v0, v62

    move/from16 v1, v65

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1076
    const/16 v65, 0x1

    move/from16 v0, v65

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v66, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v49

    move-object/from16 v3, v51

    move/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v65

    if-eqz v65, :cond_30

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v65, v0

    const/16 v65, 0x7

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNtcFeature(I)Z

    move-result v65

    if-eqz v65, :cond_6e

    .line 1083
    const-string v65, "gsm.operator.numeric.real"

    const-string v66, ""

    invoke-static/range {v65 .. v66}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1084
    .local v52, "realOperatorNumeric":Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v65

    const/16 v66, 0x2

    move/from16 v0, v65

    move/from16 v1, v66

    if-le v0, v1, :cond_6e

    .line 1086
    const/16 v65, 0x0

    const/16 v66, 0x3

    :try_start_2
    move-object/from16 v0, v52

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    invoke-static/range {v65 .. v65}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v46

    .line 1094
    .end local v52    # "realOperatorNumeric":Ljava/lang/String;
    :cond_6e
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1069
    :catch_0
    move-exception v18

    .line 1070
    .local v18, "ex":Ljava/lang/NumberFormatException;
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "countryCodeForMcc error"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 1071
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .line 1072
    .local v18, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "countryCodeForMcc error"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 1087
    .end local v18    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v52    # "realOperatorNumeric":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 1088
    .local v18, "ex":Ljava/lang/NumberFormatException;
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "countryCodeForMcc error"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_27

    .line 1089
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v18

    .line 1090
    .local v18, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "countryCodeForMcc error"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 1098
    .end local v18    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v46    # "isoCountryCode":Ljava/lang/String;
    .end local v47    # "mcc":Ljava/lang/String;
    .end local v52    # "realOperatorNumeric":Ljava/lang/String;
    :cond_6f
    const/16 v65, 0x0

    goto/16 :goto_1e

    .line 1155
    .end local v20    # "hasBrandOverride":Z
    .end local v49    # "operatorNumeric":Ljava/lang/String;
    .end local v51    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v39    # "inEcm":Ljava/lang/String;
    :cond_70
    const-string v65, "ExitEmergencyCallbackMode timer is running"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1158
    :cond_71
    const/16 v65, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->removeMessages(I)V

    .line 1159
    const-string v65, "Cancel the ExitEmergencyCallbackMode timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1168
    .end local v39    # "inEcm":Ljava/lang/String;
    :cond_72
    const/16 v40, 0x0

    goto/16 :goto_20

    .line 1196
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    invoke-virtual/range {v65 .. v66}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1230
    .restart local v12    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v15    # "cil":Landroid/telephony/CellInfoLte;
    :cond_74
    const/4 v14, 0x0

    goto/16 :goto_22

    .line 1234
    .restart local v14    # "cidChanged":Z
    .restart local v60    # "timeStamp":J
    :cond_75
    const/16 v53, 0x0

    goto/16 :goto_23

    .line 1248
    .end local v14    # "cidChanged":Z
    .end local v15    # "cil":Landroid/telephony/CellInfoLte;
    .end local v60    # "timeStamp":J
    :catchall_0
    move-exception v65

    :try_start_3
    monitor-exit v66
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v65
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 1366
    monitor-enter p0

    .line 1367
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_1

    .line 1368
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1371
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1376
    :cond_0
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1377
    const-string v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 1405
    .end local v0    # "dds":I
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1406
    return-void

    .line 1380
    .restart local v0    # "dds":I
    :cond_2
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1383
    const-string v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1386
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 1388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1390
    :cond_3
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1391
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1392
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1394
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1395
    const-string v2, "Wait upto 10s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1397
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 1405
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1399
    .restart local v0    # "dds":I
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    :try_start_1
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 1401
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1357
    return-void
.end method
