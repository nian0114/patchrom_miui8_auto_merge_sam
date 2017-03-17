.class public Lcom/sec/epdg/EpdgSettings;
.super Ljava/lang/Object;
.source "EpdgSettings.java"


# static fields
.field private static mEpdgSettings:Lcom/sec/epdg/EpdgSettings;


# instance fields
.field private mAlwaysOnApnType:Ljava/lang/String;

.field private mAttachPdn:Ljava/lang/String;

.field private mCdmaRssi:I

.field private mEmergencyApnType:Ljava/lang/String;

.field private mEpdgFqdn:Ljava/lang/String;

.field private mIdiImsi:I

.field private mIdiMac:I

.field private mImeiVendorAttr:I

.field private mIsAnsIntegrationEnabled:Z

.field private mIsBroadcastHONotiEnabled:Z

.field private mIsConnectedModeDpdAllow:Z

.field private mIsDynamicFqdn:Z

.field private mIsDynamicUserFqdn:Z

.field private mIsIpv6Enabled:Z

.field private mIsIpv6Preferred:Z

.field private mIsRetryEnabledForAlwaysOnApn:Z

.field private mIsRtcpIntegrationEnabled:Z

.field private mIsTestingOnDemandPdnHandoff:Z

.field private mIsThrottlingEnabled:Z

.field private mIsVowifiOn:Z

.field private mKeepAliveTimer:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mPcscfv4:I

.field private mPcscfv6:I

.field private mPktLossPercent:I

.field private mSmartWifiTimer:I

.field private mSysSelTimer:I

.field private mTepdg1xScanTimer:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTestInterfaceNum:I

.field private mThreshold2gRoveIn:I

.field private mThreshold2gRoveOut:I

.field private mThreshold3gRoveIn:I

.field private mThreshold3gRoveOut:I

.field private mThreshold4gRoveIn:I

.field private mThreshold4gRoveOut:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field private mWifiRssiC:I

.field private mWifiRssiRoveInWifiOnly:I

.field private mWifiRssiRoveOutWifiOnly:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/epdg/EpdgSettings;
    .locals 44

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x47

    const/16 v1, -0x4f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x6e

    const/16 v6, -0x73

    const/16 v7, -0x75

    const/4 v8, -0x7

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x78

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x5

    const v24, 0x5265c0

    const-string v25, "epdg.epc.mnc260.mcc310.pub.3gppnetwork.org"

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const-string v31, "default"

    const-string v32, "ims"

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4000

    const/16 v37, 0x4002

    const/16 v38, 0x4007

    const/16 v39, 0x1

    const-string v40, "none"

    const/16 v41, 0x1

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v0 .. v43}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, -0x48

    const/16 v1, -0x50

    const/16 v2, -0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x6e

    const/16 v6, -0x73

    const/16 v7, -0x75

    const/4 v8, -0x7

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x78

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x5

    const v24, 0x5265c0

    const-string v25, "wo.vzwwo.com"

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const-string v31, "ims"

    const-string v32, "ims"

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x4005

    const/16 v37, 0x4006

    const/16 v38, 0x4007

    const/16 v39, 0x0

    const-string v40, "emergency"

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v0 .. v43}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;
    .locals 45
    .param p0, "wifiRssiA"    # I
    .param p1, "wifiRssiB"    # I
    .param p2, "wifiRssiC"    # I
    .param p3, "wifiRssiRoveInWifiOnly"    # I
    .param p4, "wifiRssiRoveOutWifiOnly"    # I
    .param p5, "lteRsrp1"    # I
    .param p6, "lteRsrp2"    # I
    .param p7, "lteRsrp3"    # I
    .param p8, "cdmaRssi"    # I
    .param p9, "pktLossPercent"    # I
    .param p10, "threshold4gRoveIn"    # I
    .param p11, "threshold4gRoveOut"    # I
    .param p12, "threshold3gRoveIn"    # I
    .param p13, "threshold3gRoveOut"    # I
    .param p14, "threshold2gRoveIn"    # I
    .param p15, "threshold2gRoveOut"    # I
    .param p16, "sysSelTimer"    # I
    .param p17, "tepdgLteTimer"    # I
    .param p18, "tepdg1xTimer"    # I
    .param p19, "tepdg1xScanTimer"    # I
    .param p20, "idimac"    # I
    .param p21, "idiImsi"    # I
    .param p22, "isRetryEnabledForAlwaysOnApn"    # Z
    .param p23, "smartWifiTimer"    # I
    .param p24, "keepAliveTimer"    # I
    .param p25, "EpdgFQDN"    # Ljava/lang/String;
    .param p26, "isDynamicFQDN"    # Z
    .param p27, "isDynamicUserFQDN"    # Z
    .param p28, "isAnsIntegrationEnabled"    # Z
    .param p29, "isRtcpIntegrationEnabled"    # Z
    .param p30, "isBroadcastHONotiEnabled"    # Z
    .param p31, "attachPdn"    # Ljava/lang/String;
    .param p32, "alwaysOnApnType"    # Ljava/lang/String;
    .param p33, "isVowifiOn"    # Z
    .param p34, "isTestingOnDemandPdnHandoff"    # Z
    .param p35, "isThrottlingEnabled"    # Z
    .param p36, "pcscfv4"    # I
    .param p37, "pcscfv6"    # I
    .param p38, "imei"    # I
    .param p39, "testInterfaceNum"    # I
    .param p40, "emergencyApnType"    # Ljava/lang/String;
    .param p41, "isConnectedModeDpdAllow"    # Z
    .param p42, "isIpv6Enabled"    # Z
    .param p43, "isIpv6Preferred"    # Z

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/EpdgSettings;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgSettings;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move-object/from16 v41, p40

    move/from16 v42, p41

    move/from16 v43, p42

    move/from16 v44, p43

    invoke-direct/range {v0 .. v44}, Lcom/sec/epdg/EpdgSettings;->updateVariableValues(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)V

    sget-object v0, Lcom/sec/epdg/EpdgSettings;->mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method private updateVariableValues(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)V
    .locals 1
    .param p1, "wifiRssiA"    # I
    .param p2, "wifiRssiB"    # I
    .param p3, "wifiRssiC"    # I
    .param p4, "wifiRssiRoveInWifiOnly"    # I
    .param p5, "wifiRssiRoveOutWifiOnly"    # I
    .param p6, "lteRsrp1"    # I
    .param p7, "lteRsrp2"    # I
    .param p8, "lteRsrp3"    # I
    .param p9, "cdmaRssi"    # I
    .param p10, "pktLossPercent"    # I
    .param p11, "threshold4gRoveIn"    # I
    .param p12, "threshold4gRoveOut"    # I
    .param p13, "threshold3gRoveIn"    # I
    .param p14, "threshold3gRoveOut"    # I
    .param p15, "threshold2gRoveIn"    # I
    .param p16, "threshold2gRoveOut"    # I
    .param p17, "sysSelTimer"    # I
    .param p18, "tepdgLteTimer"    # I
    .param p19, "tepdg1xTimer"    # I
    .param p20, "tepdg1xScanTimer"    # I
    .param p21, "idimac"    # I
    .param p22, "idiImsi"    # I
    .param p23, "isDataRetryEnabled"    # Z
    .param p24, "smartWifiTimer"    # I
    .param p25, "keepAliveTimer"    # I
    .param p26, "epdgFqdn"    # Ljava/lang/String;
    .param p27, "isDynamicFqdn"    # Z
    .param p28, "isDynamicUserFqdn"    # Z
    .param p29, "isAnsIntegrationEnabled"    # Z
    .param p30, "isRtcpIntegrationEnabled"    # Z
    .param p31, "isBroadcastHONotiEnabled"    # Z
    .param p32, "attachPdn"    # Ljava/lang/String;
    .param p33, "alwaysOnApnType"    # Ljava/lang/String;
    .param p34, "isVowifiOn"    # Z
    .param p35, "isTestingOnDemandPdnHandoff"    # Z
    .param p36, "isThrottlingEnabled"    # Z
    .param p37, "pcscfv4"    # I
    .param p38, "pcscfv6"    # I
    .param p39, "imei"    # I
    .param p40, "testInterfaceNum"    # I
    .param p41, "emergencyApnType"    # Ljava/lang/String;
    .param p42, "isConnectedModeDpdAllow"    # Z
    .param p43, "isIpv6Enabled"    # Z
    .param p44, "isIpv6Preferred"    # Z

    .prologue
    iput p1, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiA:I

    iput p2, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiB:I

    iput p3, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiC:I

    iput p4, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInWifiOnly:I

    iput p5, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveOutWifiOnly:I

    iput p6, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp1:I

    iput p7, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp2:I

    iput p8, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp3:I

    iput p9, p0, Lcom/sec/epdg/EpdgSettings;->mCdmaRssi:I

    iput p10, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercent:I

    iput p11, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveIn:I

    iput p12, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveOut:I

    iput p13, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveIn:I

    iput p14, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveOut:I

    move/from16 v0, p15

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveIn:I

    move/from16 v0, p16

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveOut:I

    move/from16 v0, p17

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    move/from16 v0, p18

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteTimer:I

    move/from16 v0, p19

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xTimer:I

    move/from16 v0, p20

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xScanTimer:I

    move/from16 v0, p21

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    move/from16 v0, p22

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    move/from16 v0, p24

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    move/from16 v0, p25

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicUserFqdn:Z

    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsVowifiOn:Z

    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    move/from16 v0, p37

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv4:I

    move/from16 v0, p38

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv6:I

    move/from16 v0, p39

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mImeiVendorAttr:I

    move/from16 v0, p40

    iput v0, p0, Lcom/sec/epdg/EpdgSettings;->mTestInterfaceNum:I

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEmergencyApnType:Ljava/lang/String;

    move/from16 v0, p42

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsConnectedModeDpdAllow:Z

    move/from16 v0, p43

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Enabled:Z

    move/from16 v0, p44

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Preferred:Z

    return-void
.end method


# virtual methods
.method public getAlwaysOnApn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAlwaysOnApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdnId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mAttachPdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaRssi()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getEmergencyApnType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEmergencyApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getEpdgFQDN()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettings;->mEpdgFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdiImsi()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiImsi:I

    return v0
.end method

.method public getIdiMac()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mIdiMac:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mImeiVendorAttr:I

    return v0
.end method

.method public getIsAnsIntegrationEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsAnsIntegrationEnabled:Z

    return v0
.end method

.method public getIsBroadcastHONotiEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsBroadcastHONotiEnabled:Z

    return v0
.end method

.method public getIsDynamicFQDN()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicFqdn:Z

    return v0
.end method

.method public getIsDynamicUserFQDN()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsDynamicUserFqdn:Z

    return v0
.end method

.method public getIsIpv6Enabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Enabled:Z

    return v0
.end method

.method public getIsIpv6Preferred()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsIpv6Preferred:Z

    return v0
.end method

.method public getIsRtcpIntegrationEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRtcpIntegrationEnabled:Z

    return v0
.end method

.method public getIsTestingOnDemandPdnHandoff()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsTestingOnDemandPdnHandoff:Z

    return v0
.end method

.method public getIsVoWifiEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsVowifiOn:Z

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getPcscfv4VendorAttr()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv4:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPcscfv6:I

    return v0
.end method

.method public getPktLossPercent()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mPktLossPercent:I

    return v0
.end method

.method public getSmartWifiTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSmartWifiTimer:I

    return v0
.end method

.method public getSysSelTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mSysSelTimer:I

    return v0
.end method

.method public getTepdg1xScanTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xScanTimer:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTestNetInterfaceNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mTestInterfaceNum:I

    return v0
.end method

.method public getThreshold2gRoveIn()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveIn:I

    return v0
.end method

.method public getThreshold2gRoveOut()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold2gRoveOut:I

    return v0
.end method

.method public getThreshold3gRoveIn()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveIn:I

    return v0
.end method

.method public getThreshold3gRoveOut()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold3gRoveOut:I

    return v0
.end method

.method public getThreshold4gRoveIn()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveIn:I

    return v0
.end method

.method public getThreshold4gRoveOut()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mThreshold4gRoveOut:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiB:I

    return v0
.end method

.method public getWifiRssiC()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiC:I

    return v0
.end method

.method public getWifiRssiRoveInWifiOnly()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveInWifiOnly:I

    return v0
.end method

.method public getWifiRssiRoveOutWifiOnly()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mWifiRssiRoveOutWifiOnly:I

    return v0
.end method

.method public getmKeepAliveTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgSettings;->mKeepAliveTimer:I

    return v0
.end method

.method public isConnectedModeDpdAllow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsConnectedModeDpdAllow:Z

    return v0
.end method

.method public isRetryEnabledForAlwaysOnApn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsRetryEnabledForAlwaysOnApn:Z

    return v0
.end method

.method public isThrottlingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgSettings;->mIsThrottlingEnabled:Z

    return v0
.end method
