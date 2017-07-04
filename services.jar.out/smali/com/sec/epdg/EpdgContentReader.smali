.class public Lcom/sec/epdg/EpdgContentReader;
.super Ljava/lang/Object;
.source "EpdgContentReader.java"


# static fields
.field private static final COLUMN_ALWAYSON_APNTYPE:Ljava/lang/String; = "alwayson_apntype"

.field private static final COLUMN_ALWAYS_ON_APN_RETRY_ENABLED:Ljava/lang/String; = "retry_enabled_for_always_on_apn"

.field private static final COLUMN_APN:Ljava/lang/String; = "apnname"

.field private static final COLUMN_ATTACH_PDN:Ljava/lang/String; = "attach_pdn"

.field private static final COLUMN_AUTH_TYPE:Ljava/lang/String; = "authtype"

.field private static final COLUMN_BROADCAST_HO_RESULT:Ljava/lang/String; = "broadcast_ho_result"

.field private static final COLUMN_CERTI_PATH:Ljava/lang/String; = "certi_path"

.field private static final COLUMN_CONN_NAME:Ljava/lang/String; = "connname"

.field private static final COLUMN_DPD_ALLOWED_IN_CONNECTED_MODE:Ljava/lang/String; = "is_dpd_allowed_in_connected_mode"

.field private static final COLUMN_DYNAMIC_FQDN_ENABLED:Ljava/lang/String; = "dynamic_fqdn"

.field private static final COLUMN_DYNAMIC_USER_FQDN_ENABLED:Ljava/lang/String; = "dynamic_userfqdn"

.field private static final COLUMN_EMERGENCY_APNTYPE:Ljava/lang/String; = "emergency_apntype"

.field private static final COLUMN_EPDG_SERVER_IP:Ljava/lang/String; = "epdgserverip"

.field private static final COLUMN_HO_DELAY_TIMER:Ljava/lang/String; = "hodelaytimer"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_IDI_IMSI:Ljava/lang/String; = "idiimsi"

.field private static final COLUMN_IDI_MAC:Ljava/lang/String; = "idimac"

.field private static final COLUMN_IKE_CONNECTION_TIMEOUT:Ljava/lang/String; = "ikeconnectiontimeout"

.field private static final COLUMN_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ikedpdtimeout"

.field private static final COLUMN_IKE_EAP_TYPE:Ljava/lang/String; = "ikeeaptype"

.field private static final COLUMN_IKE_ENCRYPTION:Ljava/lang/String; = "ikeencryption"

.field private static final COLUMN_IKE_GROUP:Ljava/lang/String; = "ikegroup"

.field private static final COLUMN_IKE_INTEGRITY:Ljava/lang/String; = "ikeintegrity"

.field private static final COLUMN_IKE_LIFE:Ljava/lang/String; = "ikelife"

.field private static final COLUMN_IKE_NAT_VALUE:Ljava/lang/String; = "ikenatvalue"

.field private static final COLUMN_IKE_VERSION:Ljava/lang/String; = "ikeversion"

.field private static final COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Ljava/lang/String; = "ikevirtualadaptername"

.field private static final COLUMN_IKE_WINDOW_SIZE:Ljava/lang/String; = "ikewindowsize"

.field private static final COLUMN_IMEI_VENDOR_ATTRIBUTE:Ljava/lang/String; = "imei"

.field private static final COLUMN_IMEI_VENDOR_ATTR_TYPE:Ljava/lang/String; = "imeivendorattr"

.field private static final COLUMN_IPSEC_ENCRYPTION:Ljava/lang/String; = "ipsecencryption"

.field private static final COLUMN_IPSEC_GROUP:Ljava/lang/String; = "ipsecgroup"

.field private static final COLUMN_IPSEC_INTEGRITY:Ljava/lang/String; = "ipsecintegrity"

.field private static final COLUMN_IPSEC_LIFETYPE:Ljava/lang/String; = "ipseclifetime"

.field private static final COLUMN_IPSEC_LIFE_VALUE:Ljava/lang/String; = "ipseclifevalue"

.field private static final COLUMN_IS_IPV6_ENABLED:Ljava/lang/String; = "is_ipv6_enabled"

.field private static final COLUMN_IS_IPV6_PREFERRED:Ljava/lang/String; = "is_ipv6_preferred"

.field private static final COLUMN_IS_THROTTLE_ENABLED:Ljava/lang/String; = "is_throttle_enabled"

.field private static final COLUMN_IS_USING_CERTI:Ljava/lang/String; = "is_using_certi"

.field private static final COLUMN_KEEP_ALIVE_TIMER:Ljava/lang/String; = "internet_pdn_keep_alive_timer"

.field private static final COLUMN_MOBIKE:Ljava/lang/String; = "mobike"

.field private static final COLUMN_ON_DEMAND_PDN_HANDOFF:Ljava/lang/String; = "ondemand_pdn_handoff"

.field private static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field private static final COLUMN_OWN_IDENTITY:Ljava/lang/String; = "ownidentity"

.field private static final COLUMN_OWN_URI_TYPE:Ljava/lang/String; = "ownuritype"

.field private static final COLUMN_PCSCFV4_VENDOR_ATTR:Ljava/lang/String; = "pcscfv4vendorattr"

.field private static final COLUMN_PCSCFV6_VENDOR_ATTR:Ljava/lang/String; = "pcscfv6vendorattr"

.field private static final COLUMN_PERIODIC_DPD_TIMER:Ljava/lang/String; = "periodicdpdtimer"

.field private static final COLUMN_PFS:Ljava/lang/String; = "pfs"

.field private static final COLUMN_REMOTE_IDENTITY:Ljava/lang/String; = "remoteidentity"

.field private static final COLUMN_REMOTE_URI_TYPE:Ljava/lang/String; = "remoteuritype"

.field private static final COLUMN_SMARTWIFI_CDMA_RSSI:Ljava/lang/String; = "smartwificdmarssi"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP1:Ljava/lang/String; = "smartwifirsrp1"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP2:Ljava/lang/String; = "smartwifirsrp2"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP3:Ljava/lang/String; = "smartwifirsrp3"

.field private static final COLUMN_SMARTWIFI_PKT_LOSS_PERCENT:Ljava/lang/String; = "smartpktlosspercent"

.field private static final COLUMN_SMARTWIFI_RSSI_A:Ljava/lang/String; = "smartwifirssia"

.field private static final COLUMN_SMARTWIFI_RSSI_B:Ljava/lang/String; = "smartwifirssib"

.field private static final COLUMN_SMARTWIFI_RSSI_C:Ljava/lang/String; = "smartwifirssic"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEIN_VOICE:Ljava/lang/String; = "smartwifirssiroveinvoice"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEIN_WIFIONLY:Ljava/lang/String; = "smartwifirssiroveinwifionly"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEOUT_WIFIONLY:Ljava/lang/String; = "smartwifirssiroveoutwifionly"

.field private static final COLUMN_SMARTWIFI_TIMER:Ljava/lang/String; = "smartwifitimer"

.field private static final COLUMN_SMART_WIFI_ANS_INTEGRATION:Ljava/lang/String; = "smart_wifi_ans_integration"

.field private static final COLUMN_SMART_WIFI_RTCP_INTEGRATION:Ljava/lang/String; = "smart_wifi_rtcp_integration"

.field private static final COLUMN_SUBNET_TYPE:Ljava/lang/String; = "subnettype"

.field private static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field private static final COLUMN_TEPDG_1X_SCAN_TIMER:Ljava/lang/String; = "tepdg1xScantimer"

.field private static final COLUMN_TEPDG_1X_TIMER:Ljava/lang/String; = "tepdg1xtimer"

.field private static final COLUMN_TEPDG_LTE_TIMER:Ljava/lang/String; = "tepdgltetimer"

.field private static final COLUMN_TEST_NETWORK_INTERFACE_NUMBER:Ljava/lang/String; = "netinterfacenum"

.field private static final COLUMN_THRESHOLD_2G_ROVE_IN:Ljava/lang/String; = "threshold2grovein"

.field private static final COLUMN_THRESHOLD_2G_ROVE_OUT:Ljava/lang/String; = "threshold2groveout"

.field private static final COLUMN_THRESHOLD_3G_ROVE_IN:Ljava/lang/String; = "threshold3grovein"

.field private static final COLUMN_THRESHOLD_3G_ROVE_OUT:Ljava/lang/String; = "threshold3groveout"

.field private static final COLUMN_THRESHOLD_4G_ROVE_IN:Ljava/lang/String; = "threshold4grovein"

.field private static final COLUMN_THRESHOLD_4G_ROVE_OUT:Ljava/lang/String; = "threshold4groveout"

.field private static final COLUMN_TUNNEL_TYPE:Ljava/lang/String; = "tunneltype"

.field private static final COLUMN_USER_AUTH_TYPE:Ljava/lang/String; = "userauthtype"

.field private static final COLUMN_VENDOR_ATTRIBUTE:Ljava/lang/String; = "vendorattribute"

.field private static final COLUMN_VOWIFI_PREF:Ljava/lang/String; = "vowifi_pref"

.field private static final COLUMN_WIFI_IP_CONFIG_TIMER:Ljava/lang/String; = "wifiipconfigtimer"

.field private static final COLUMN_WIFI_RSSI_INTENT_DELAY_TIMER:Ljava/lang/String; = "wifirssiintentdelaytimer"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/todo"

.field private static final TABLE_IWLANSETTINGS:Ljava/lang/String; = "iwlansetting"

.field private static final TAG:Ljava/lang/String; = "[DBREADER]"

.field private static mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;


# instance fields
.field colName:Ljava/lang/String;

.field private epdgSettings:Lcom/sec/epdg/EpdgSettings;

.field private iWlanApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    .line 23
    invoke-static {}, Lcom/sec/epdg/EpdgSettings;->getInstance()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 102
    return-void
.end method

.method private addEpdgSetting(Landroid/database/Cursor;)V
    .locals 100
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 866
    const-string/jumbo v97, "smartwifirssia"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v89

    .line 868
    .local v89, "strWifiRssiA":Ljava/lang/String;
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 869
    .local v2, "wifiRssiA":I
    const-string/jumbo v97, "smartwifirssib"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v90

    .line 871
    .local v90, "strWifiRssiB":Ljava/lang/String;
    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 872
    .local v3, "wifiRssiB":I
    const-string/jumbo v97, "smartwifirssic"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v91

    .line 874
    .local v91, "strWifiRssiC":Ljava/lang/String;
    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 875
    .local v4, "wifiRssiC":I
    const-string/jumbo v97, "smartwifirssiroveinwifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v94

    .line 877
    .local v94, "strWifiRssiRoveInWifiOnly":Ljava/lang/String;
    invoke-static/range {v94 .. v94}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 878
    .local v5, "wifiRssiRoveInWifiOnly":I
    const-string/jumbo v97, "smartwifirssiroveoutwifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v95

    .line 880
    .local v95, "strWifiRssiRoveOutWifiOnly":Ljava/lang/String;
    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 881
    .local v6, "wifiRssiRoveOutWifiOnly":I
    const-string/jumbo v97, "smartwifirssiroveinvoice"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v93

    .line 883
    .local v93, "strWifiRssiRoveInVoice":Ljava/lang/String;
    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 884
    .local v7, "wifiRssiRoveInVoice":I
    const-string/jumbo v97, "smartwifirsrp1"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v71

    .line 886
    .local v71, "strLteRsrp1":Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 887
    .local v8, "lteRsrp1":I
    const-string/jumbo v97, "smartwifirsrp2"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 889
    .local v72, "strLteRsrp2":Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 890
    .local v9, "lteRsrp2":I
    const-string/jumbo v97, "smartwifirsrp3"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 892
    .local v73, "strLteRsrp3":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 893
    .local v10, "lteRsrp3":I
    const-string/jumbo v97, "smartwificdmarssi"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 895
    .local v53, "strCdmaRssi":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 896
    .local v11, "cdmaRssi":I
    const-string/jumbo v97, "smartpktlosspercent"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 898
    .local v76, "strPktLossPercent":Ljava/lang/String;
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 899
    .local v12, "pktLossPercent":I
    const-string/jumbo v97, "threshold4grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v86

    .line 901
    .local v86, "strThreshold4gRoveIn":Ljava/lang/String;
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 902
    .local v13, "threshold4gRoveIn":I
    const-string/jumbo v97, "threshold4groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v87

    .line 904
    .local v87, "strThreshold4gRoveOut":Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 905
    .local v14, "threshold4gRoveOut":I
    const-string/jumbo v97, "threshold3grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 907
    .local v84, "strThreshold3gRoveIn":Ljava/lang/String;
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 908
    .local v15, "threshold3gRoveIn":I
    const-string/jumbo v97, "threshold3groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v85

    .line 910
    .local v85, "strThreshold3gRoveOut":Ljava/lang/String;
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 911
    .local v16, "threshold3gRoveOut":I
    const-string/jumbo v97, "threshold2grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v82

    .line 913
    .local v82, "strThreshold2gRoveIn":Ljava/lang/String;
    invoke-static/range {v82 .. v82}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 914
    .local v17, "threshold2gRoveIn":I
    const-string/jumbo v97, "threshold2groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v83

    .line 916
    .local v83, "strThreshold2gRoveOut":Ljava/lang/String;
    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 917
    .local v18, "threshold2gRoveOut":I
    const-string/jumbo v97, "sysseltimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 919
    .local v78, "strSysSelTimer":Ljava/lang/String;
    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 920
    .local v19, "sysSelTimer":I
    const-string/jumbo v97, "tepdgltetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v81

    .line 922
    .local v81, "strTepdgLteTimer":Ljava/lang/String;
    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 923
    .local v20, "tepdgLteTimer":I
    const-string/jumbo v97, "tepdg1xtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 925
    .local v80, "strTepdg1xTimer":Ljava/lang/String;
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 926
    .local v21, "tepdg1xTimer":I
    const-string/jumbo v97, "tepdg1xScantimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 928
    .local v79, "strTepdg1xScanTimer":Ljava/lang/String;
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 929
    .local v22, "tepdg1xScanTimer":I
    const-string/jumbo v97, "hodelaytimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 931
    .local v54, "strHoDelayTimer":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 932
    .local v23, "hoDelayTimer":I
    const-string/jumbo v97, "wifirssiintentdelaytimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v92

    .line 934
    .local v92, "strWifiRssiIntentDelayTimer":Ljava/lang/String;
    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 935
    .local v24, "wifiRssiIntentDelayTimer":I
    const-string/jumbo v97, "wifiipconfigtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v88

    .line 937
    .local v88, "strWifiIpConfigTimer":Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 938
    .local v25, "wifiIpConfigTimer":I
    const-string/jumbo v97, "idimac"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 940
    .local v56, "strIdiMac":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 941
    .local v26, "idiMac":I
    const-string/jumbo v97, "idiimsi"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 943
    .local v55, "strIdiImsi":Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 944
    .local v27, "idiImsi":I
    const-string/jumbo v97, "retry_enabled_for_always_on_apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 946
    .local v61, "strIsDataRetryEnabled":Ljava/lang/String;
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_1

    const/16 v28, 0x1

    .line 947
    .local v28, "isRetryEnabledForAlwaysOnApn":Z
    :goto_0
    const-string/jumbo v97, "smartwifitimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 949
    .local v77, "strSmartWifiTimer":Ljava/lang/String;
    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 950
    .local v29, "smartWifiTimer":I
    const-string/jumbo v97, "internet_pdn_keep_alive_timer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v96

    .line 952
    .local v96, "strkeepAliveTimer":Ljava/lang/String;
    invoke-static/range {v96 .. v96}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 954
    .local v30, "keepAliveTimer":I
    const-string/jumbo v97, "epdgserverip"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 956
    .local v31, "epdgServerIp":Ljava/lang/String;
    const-string/jumbo v97, "dynamic_fqdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 958
    .local v62, "strIsDynamicFqdn":Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_2

    const/16 v32, 0x1

    .line 960
    .local v32, "isDynamicFqdn":Z
    :goto_1
    const-string/jumbo v97, "dynamic_userfqdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 962
    .local v63, "strIsDynamicUserFqdn":Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_3

    const/16 v33, 0x1

    .line 964
    .local v33, "isDynamicUserFqdn":Z
    :goto_2
    const-string/jumbo v97, "smart_wifi_ans_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 966
    .local v58, "strIsAnsIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_4

    const/16 v34, 0x1

    .line 968
    .local v34, "isAnsIntegrationEnabled":Z
    :goto_3
    const-string/jumbo v97, "smart_wifi_rtcp_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 970
    .local v67, "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_5

    const/16 v35, 0x1

    .line 973
    .local v35, "isRtcpIntegrationEnabled":Z
    :goto_4
    const-string v97, "broadcast_ho_result"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 975
    .local v59, "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_6

    const/16 v36, 0x1

    .line 977
    .local v36, "isBroadcastHONotiEnabled":Z
    :goto_5
    const-string v97, "attach_pdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 979
    .local v37, "attachPdn":Ljava/lang/String;
    const-string v97, "alwayson_apntype"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 982
    .local v38, "alwaysOnApn":Ljava/lang/String;
    const-string/jumbo v97, "vowifi_pref"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 984
    .local v70, "strIsVowifiOn":Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_7

    const/16 v39, 0x1

    .line 986
    .local v39, "isVowifiOn":Z
    :goto_6
    const-string/jumbo v97, "ondemand_pdn_handoff"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 988
    .local v66, "strIsOnDemandPdnHandoff":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_8

    const/16 v40, 0x1

    .line 990
    .local v40, "isOnDemandPdnHandoff":Z
    :goto_7
    const-string/jumbo v97, "is_throttle_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 992
    .local v68, "strIsThrottlingEnabled":Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_9

    const/16 v41, 0x1

    .line 994
    .local v41, "isThrottlingEnabled":Z
    :goto_8
    const-string/jumbo v97, "pcscfv4vendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v74

    .line 996
    .local v74, "strPcscfv4":Ljava/lang/String;
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 998
    .local v42, "pcscfv4attr":I
    const-string/jumbo v97, "pcscfv6vendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 1000
    .local v75, "strPcscfv6":Ljava/lang/String;
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 1004
    .local v43, "pcscfv6attr":I
    const-string/jumbo v97, "imeivendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1006
    .local v52, "imeiVendorAttrTypeStr":Ljava/lang/String;
    if-nez v52, :cond_a

    .line 1007
    const/16 v44, 0x0

    .line 1012
    .local v44, "imeiVendorAttrType":I
    :goto_9
    const-string/jumbo v97, "netinterfacenum"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1014
    .local v57, "strInterfaceNum":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 1016
    .local v45, "interfaceNum":I
    const-string/jumbo v97, "emergency_apntype"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 1019
    .local v46, "emergencyApnType":Ljava/lang/String;
    const-string/jumbo v97, "is_dpd_allowed_in_connected_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 1021
    .local v60, "strIsConnectedDpdAllow":Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_b

    const/16 v47, 0x1

    .line 1023
    .local v47, "isConnectedModeDpdAllow":Z
    :goto_a
    const-string/jumbo v97, "is_ipv6_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 1025
    .local v64, "strIsIpv6Enabled":Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_c

    const/16 v48, 0x1

    .line 1027
    .local v48, "isIpv6Enabled":Z
    :goto_b
    const-string/jumbo v97, "is_ipv6_preferred"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 1029
    .local v65, "strIsIpv6Preferred":Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_d

    const/16 v49, 0x1

    .line 1031
    .local v49, "isIpv6Preferred":Z
    :goto_c
    const-string v97, "certi_path"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1034
    .local v50, "certiPath":Ljava/lang/String;
    const-string/jumbo v97, "is_using_certi"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 1036
    .local v69, "strIsUsingCerti":Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_e

    const/16 v51, 0x1

    .line 1038
    .local v51, "isUsingCerti":Z
    :goto_d
    invoke-static/range {v2 .. v51}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)Lcom/sec/epdg/EpdgSettings;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 1048
    const-string v98, "[DBREADER]"

    new-instance v97, Ljava/lang/StringBuilder;

    invoke-direct/range {v97 .. v97}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v99, "epdgsettings read successfully :  Wifi Level : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI B : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI C : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI Rove In (WifiOnly) : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI Rove Out (WifiOnly) : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI Rove In (Voice) : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Lte RSRP 1 : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Lte RSRP 2 : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Lte RSRP 3 : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Cdma Rssi : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Pkt Loss Percent : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " 4G Rove In Out :"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, ", "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " 3G Rove In Out :"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, ", "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " 2G Rove In Out :"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, ", "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Sys Sel Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " TepdgLte timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Tepdg1x timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Tepdg1xScan timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IDi MAC : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " HO Delay Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi Rssi Intent Delay Timer "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi IP Config Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v99

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v97

    if-eqz v97, :cond_f

    const-string/jumbo v97, "suppressed in user binary"

    :goto_e
    move-object/from16 v0, v99

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IDi IMSI : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v99

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v97

    if-eqz v97, :cond_10

    const-string/jumbo v97, "suppressed in user binary"

    :goto_f
    move-object/from16 v0, v99

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Data retry enabled: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " SmartWifi Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Internet Keep-Alive Timer "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " EPDG Server IP "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v99

    if-eqz v99, :cond_0

    const-string v31, "Suppressed in user binary"

    .end local v31    # "epdgServerIp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v97

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " dynamic_fqdn "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " dynamic_userfqdn "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Smart WiFi ANS Integration "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Smart WiFi RTCP Integration "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Broadcast HO result "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Attach PDN "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " alwaysOn Apn "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Testing On demand PDN Handoff "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Vowifi "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IsThrottlingEnabled: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " pcscfv4attr: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " pcscfv6attr: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " imeiVendorAttrType: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " interfaceNum: rmnet"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " emergencyApnType"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Dpd allow in connected mode"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IsIpv6Enabled: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IsIpv6Preferred: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " certiPath: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " isUsingCerti "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    invoke-virtual/range {v97 .. v97}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v97

    move-object/from16 v0, v98

    move-object/from16 v1, v97

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    return-void

    .line 946
    .end local v28    # "isRetryEnabledForAlwaysOnApn":Z
    .end local v29    # "smartWifiTimer":I
    .end local v30    # "keepAliveTimer":I
    .end local v32    # "isDynamicFqdn":Z
    .end local v33    # "isDynamicUserFqdn":Z
    .end local v34    # "isAnsIntegrationEnabled":Z
    .end local v35    # "isRtcpIntegrationEnabled":Z
    .end local v36    # "isBroadcastHONotiEnabled":Z
    .end local v37    # "attachPdn":Ljava/lang/String;
    .end local v38    # "alwaysOnApn":Ljava/lang/String;
    .end local v39    # "isVowifiOn":Z
    .end local v40    # "isOnDemandPdnHandoff":Z
    .end local v41    # "isThrottlingEnabled":Z
    .end local v42    # "pcscfv4attr":I
    .end local v43    # "pcscfv6attr":I
    .end local v44    # "imeiVendorAttrType":I
    .end local v45    # "interfaceNum":I
    .end local v46    # "emergencyApnType":Ljava/lang/String;
    .end local v47    # "isConnectedModeDpdAllow":Z
    .end local v48    # "isIpv6Enabled":Z
    .end local v49    # "isIpv6Preferred":Z
    .end local v50    # "certiPath":Ljava/lang/String;
    .end local v51    # "isUsingCerti":Z
    .end local v52    # "imeiVendorAttrTypeStr":Ljava/lang/String;
    .end local v57    # "strInterfaceNum":Ljava/lang/String;
    .end local v58    # "strIsAnsIntegrationEnabled":Ljava/lang/String;
    .end local v59    # "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    .end local v60    # "strIsConnectedDpdAllow":Ljava/lang/String;
    .end local v62    # "strIsDynamicFqdn":Ljava/lang/String;
    .end local v63    # "strIsDynamicUserFqdn":Ljava/lang/String;
    .end local v64    # "strIsIpv6Enabled":Ljava/lang/String;
    .end local v65    # "strIsIpv6Preferred":Ljava/lang/String;
    .end local v66    # "strIsOnDemandPdnHandoff":Ljava/lang/String;
    .end local v67    # "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    .end local v68    # "strIsThrottlingEnabled":Ljava/lang/String;
    .end local v69    # "strIsUsingCerti":Ljava/lang/String;
    .end local v70    # "strIsVowifiOn":Ljava/lang/String;
    .end local v74    # "strPcscfv4":Ljava/lang/String;
    .end local v75    # "strPcscfv6":Ljava/lang/String;
    .end local v77    # "strSmartWifiTimer":Ljava/lang/String;
    .end local v96    # "strkeepAliveTimer":Ljava/lang/String;
    :cond_1
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 958
    .restart local v28    # "isRetryEnabledForAlwaysOnApn":Z
    .restart local v29    # "smartWifiTimer":I
    .restart local v30    # "keepAliveTimer":I
    .restart local v31    # "epdgServerIp":Ljava/lang/String;
    .restart local v62    # "strIsDynamicFqdn":Ljava/lang/String;
    .restart local v77    # "strSmartWifiTimer":Ljava/lang/String;
    .restart local v96    # "strkeepAliveTimer":Ljava/lang/String;
    :cond_2
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 962
    .restart local v32    # "isDynamicFqdn":Z
    .restart local v63    # "strIsDynamicUserFqdn":Ljava/lang/String;
    :cond_3
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 966
    .restart local v33    # "isDynamicUserFqdn":Z
    .restart local v58    # "strIsAnsIntegrationEnabled":Ljava/lang/String;
    :cond_4
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 970
    .restart local v34    # "isAnsIntegrationEnabled":Z
    .restart local v67    # "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    :cond_5
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 975
    .restart local v35    # "isRtcpIntegrationEnabled":Z
    .restart local v59    # "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    :cond_6
    const/16 v36, 0x0

    goto/16 :goto_5

    .line 984
    .restart local v36    # "isBroadcastHONotiEnabled":Z
    .restart local v37    # "attachPdn":Ljava/lang/String;
    .restart local v38    # "alwaysOnApn":Ljava/lang/String;
    .restart local v70    # "strIsVowifiOn":Ljava/lang/String;
    :cond_7
    const/16 v39, 0x0

    goto/16 :goto_6

    .line 988
    .restart local v39    # "isVowifiOn":Z
    .restart local v66    # "strIsOnDemandPdnHandoff":Ljava/lang/String;
    :cond_8
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 992
    .restart local v40    # "isOnDemandPdnHandoff":Z
    .restart local v68    # "strIsThrottlingEnabled":Ljava/lang/String;
    :cond_9
    const/16 v41, 0x0

    goto/16 :goto_8

    .line 1009
    .restart local v41    # "isThrottlingEnabled":Z
    .restart local v42    # "pcscfv4attr":I
    .restart local v43    # "pcscfv6attr":I
    .restart local v52    # "imeiVendorAttrTypeStr":Ljava/lang/String;
    .restart local v74    # "strPcscfv4":Ljava/lang/String;
    .restart local v75    # "strPcscfv6":Ljava/lang/String;
    :cond_a
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .restart local v44    # "imeiVendorAttrType":I
    goto/16 :goto_9

    .line 1021
    .restart local v45    # "interfaceNum":I
    .restart local v46    # "emergencyApnType":Ljava/lang/String;
    .restart local v57    # "strInterfaceNum":Ljava/lang/String;
    .restart local v60    # "strIsConnectedDpdAllow":Ljava/lang/String;
    :cond_b
    const/16 v47, 0x0

    goto/16 :goto_a

    .line 1025
    .restart local v47    # "isConnectedModeDpdAllow":Z
    .restart local v64    # "strIsIpv6Enabled":Ljava/lang/String;
    :cond_c
    const/16 v48, 0x0

    goto/16 :goto_b

    .line 1029
    .restart local v48    # "isIpv6Enabled":Z
    .restart local v65    # "strIsIpv6Preferred":Ljava/lang/String;
    :cond_d
    const/16 v49, 0x0

    goto/16 :goto_c

    .line 1036
    .restart local v49    # "isIpv6Preferred":Z
    .restart local v50    # "certiPath":Ljava/lang/String;
    .restart local v69    # "strIsUsingCerti":Ljava/lang/String;
    :cond_e
    const/16 v51, 0x0

    goto/16 :goto_d

    .line 1048
    .restart local v51    # "isUsingCerti":Z
    :cond_f
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    goto/16 :goto_e

    :cond_10
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    goto/16 :goto_f
.end method

.method private addIwlanApn(Landroid/database/Cursor;)V
    .locals 62
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 230
    const/16 v52, 0x0

    .line 232
    .local v52, "iwlanapn":Lcom/sec/epdg/IWlanApnSetting;
    const-string v60, "connname"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "iWlanSettingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 236
    .local v3, "ipsecUserAuthval":Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    const-string/jumbo v60, "userauthtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 238
    .local v44, "ipsecUserAuthvalStr":Ljava/lang/String;
    const-string/jumbo v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_12

    .line 239
    sget-object v3, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->ENABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    .line 243
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 244
    .local v4, "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    const-string/jumbo v60, "pfs"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 246
    .local v56, "pfsvalStr":Ljava/lang/String;
    const-string/jumbo v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_13

    .line 247
    sget-object v4, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    .line 251
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 252
    .local v5, "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    const-string/jumbo v60, "subnettype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 254
    .local v51, "iptypeStr":Ljava/lang/String;
    const-string v60, "IPV4"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_14

    .line 255
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 261
    :goto_2
    const/4 v6, 0x0

    .line 262
    .local v6, "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    const-string/jumbo v60, "ownuritype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 264
    .local v54, "ownUriTypeStr":Ljava/lang/String;
    const-string v60, "IPV4_ADDR"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_16

    .line 265
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 277
    :cond_2
    :goto_3
    const-string/jumbo v60, "ownidentity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "ownUri":Ljava/lang/String;
    const/4 v8, 0x0

    .line 281
    .local v8, "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    const-string/jumbo v60, "remoteuritype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 283
    .local v57, "remoteuritypeStr":Ljava/lang/String;
    const-string v60, "IPV4_ADDR"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1b

    .line 284
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 296
    :cond_3
    :goto_4
    const-string/jumbo v60, "remoteidentity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "remoteUri":Ljava/lang/String;
    const-string v60, "apnname"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "apnType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 303
    .local v11, "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    const-string v60, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 305
    .local v45, "ipsecauthtypeStr":Ljava/lang/String;
    const-string v60, "EAP"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_20

    .line 306
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .line 312
    :cond_4
    :goto_5
    const/4 v12, 0x0

    .line 313
    .local v12, "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    sget-object v12, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 315
    const/4 v13, 0x0

    .line 316
    .local v13, "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    const-string/jumbo v60, "tunneltype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 318
    .local v59, "tunnelmodeStr":Ljava/lang/String;
    const-string v60, "IPSEC_RAC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_22

    .line 319
    sget-object v13, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .line 323
    :cond_5
    :goto_6
    const/4 v14, 0x0

    .line 324
    .local v14, "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    const-string/jumbo v60, "ipsecencryption"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 326
    .local v47, "ipsecencryptiontypeStr":Ljava/lang/String;
    const-string v60, "IPSEC_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_23

    .line 327
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .line 366
    :cond_6
    :goto_7
    const/4 v15, 0x0

    .line 367
    .local v15, "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    const-string/jumbo v60, "ipsecintegrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 369
    .local v48, "ipsecintegrityStr":Ljava/lang/String;
    const-string v60, "IPSEC_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_30

    .line 370
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 398
    :cond_7
    :goto_8
    const/16 v16, 0x0

    .line 399
    .local v16, "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    const-string/jumbo v60, "ipsecgroup"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 401
    .local v46, "ipsecdhgroupStr":Ljava/lang/String;
    const-string v60, "IPSEC_GROUP_MODP_768"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3d

    .line 402
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .line 438
    :cond_8
    :goto_9
    const/16 v17, 0x0

    .line 439
    .local v17, "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    const-string/jumbo v60, "ipseclifetime"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 441
    .local v49, "ipseclifetypeStr":Ljava/lang/String;
    const-string v60, "IPSEC_LIFE_TYPE_SECONDS"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4e

    .line 442
    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 447
    :cond_9
    :goto_a
    const-string/jumbo v60, "ipseclifevalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 449
    .local v50, "ipseclifevalStr":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 451
    .local v18, "ipseclifeval":I
    const/16 v19, 0x0

    .line 452
    .local v19, "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    const-string/jumbo v60, "ikeversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 454
    .local v41, "ikeversionStr":Ljava/lang/String;
    const-string v60, "IKE_VERSION_1"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4f

    .line 455
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 459
    :cond_a
    :goto_b
    const/16 v20, 0x0

    .line 460
    .local v20, "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    const-string/jumbo v60, "ikeencryption"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 462
    .local v37, "ikeencryptionStr":Ljava/lang/String;
    const-string v60, "IKE_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_50

    .line 463
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .line 491
    :cond_b
    :goto_c
    const/16 v21, 0x0

    .line 492
    .local v21, "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    const-string/jumbo v60, "ikeintegrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 494
    .local v38, "ikeintegrityStr":Ljava/lang/String;
    const-string v60, "IKE_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5d

    .line 495
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .line 515
    :cond_c
    :goto_d
    const/16 v22, 0x0

    .line 516
    .local v22, "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    const-string/jumbo v60, "ikegroup"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 518
    .local v35, "ikedhgroupStr":Ljava/lang/String;
    const-string v60, "IKE_GROUP_MODP_768"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_66

    .line 519
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .line 558
    :cond_d
    :goto_e
    const-string/jumbo v60, "ikelife"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 560
    .local v39, "ikelifeStr":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 563
    .local v23, "ikelife":I
    const-string/jumbo v60, "ikewindowsize"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 565
    .local v42, "ikewindowStr":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 568
    .local v24, "ikewindow":I
    const-string/jumbo v60, "ikeconnectiontimeout"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 570
    .local v34, "ikeconntimeoutStr":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 573
    .local v25, "ikeconntimeout":I
    const-string/jumbo v60, "ikedpdtimeout"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 575
    .local v36, "ikedpdtimeoutStr":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 577
    .local v26, "ikedpdtimeout":I
    const/16 v27, 0x0

    .line 578
    .local v27, "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    const-string/jumbo v60, "ikeeaptype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 580
    .local v33, "eaptypeStr":Ljava/lang/String;
    const-string v60, "EAP_METHOD_MD5_CHALLENGE"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_78

    .line 581
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 590
    :cond_e
    :goto_f
    const-string/jumbo v60, "ikenatvalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 592
    .local v40, "ikenatvalStr":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 594
    .local v28, "ikenatval":I
    const/16 v29, 0x0

    .line 595
    .local v29, "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    const-string/jumbo v60, "vendorattribute"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 597
    .local v55, "pcscfVendorAtStr":Ljava/lang/String;
    const-string v60, "NONE"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7b

    .line 598
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    .line 606
    :cond_f
    :goto_10
    const/16 v31, 0x0

    .line 607
    .local v31, "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    const-string/jumbo v60, "mobike"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 609
    .local v53, "mobikevalStr":Ljava/lang/String;
    const-string/jumbo v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_7e

    .line 610
    sget-object v31, Lcom/sec/epdg/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    .line 614
    :cond_10
    :goto_11
    const/16 v32, 0x0

    .line 615
    .local v32, "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    const-string/jumbo v60, "imei"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 617
    .local v43, "imeiVendorAtStr":Ljava/lang/String;
    const-string v60, "NONE"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7f

    .line 618
    sget-object v32, Lcom/sec/epdg/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 622
    :cond_11
    :goto_12
    const-string/jumbo v60, "periodicdpdtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 625
    .local v58, "strPeriodicDpdTimer":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 627
    .local v30, "periodicDpdTimer":I
    invoke-static/range {v2 .. v32}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;ILcom/sec/epdg/IWlanEnum$Mobike;Lcom/sec/epdg/IWlanEnum$Imei;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v52

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v60, "[DBREADER]"

    const-string/jumbo v61, "iwlanapn added successfully"

    invoke-static/range {v60 .. v61}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-void

    .line 240
    .end local v4    # "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    .end local v5    # "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .end local v6    # "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .end local v7    # "ownUri":Ljava/lang/String;
    .end local v8    # "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .end local v9    # "remoteUri":Ljava/lang/String;
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v11    # "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .end local v12    # "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .end local v13    # "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .end local v14    # "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .end local v15    # "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .end local v16    # "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .end local v17    # "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .end local v18    # "ipseclifeval":I
    .end local v19    # "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .end local v20    # "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .end local v21    # "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .end local v22    # "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .end local v23    # "ikelife":I
    .end local v24    # "ikewindow":I
    .end local v25    # "ikeconntimeout":I
    .end local v26    # "ikedpdtimeout":I
    .end local v27    # "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .end local v28    # "ikenatval":I
    .end local v29    # "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .end local v30    # "periodicDpdTimer":I
    .end local v31    # "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    .end local v32    # "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v33    # "eaptypeStr":Ljava/lang/String;
    .end local v34    # "ikeconntimeoutStr":Ljava/lang/String;
    .end local v35    # "ikedhgroupStr":Ljava/lang/String;
    .end local v36    # "ikedpdtimeoutStr":Ljava/lang/String;
    .end local v37    # "ikeencryptionStr":Ljava/lang/String;
    .end local v38    # "ikeintegrityStr":Ljava/lang/String;
    .end local v39    # "ikelifeStr":Ljava/lang/String;
    .end local v40    # "ikenatvalStr":Ljava/lang/String;
    .end local v41    # "ikeversionStr":Ljava/lang/String;
    .end local v42    # "ikewindowStr":Ljava/lang/String;
    .end local v43    # "imeiVendorAtStr":Ljava/lang/String;
    .end local v45    # "ipsecauthtypeStr":Ljava/lang/String;
    .end local v46    # "ipsecdhgroupStr":Ljava/lang/String;
    .end local v47    # "ipsecencryptiontypeStr":Ljava/lang/String;
    .end local v48    # "ipsecintegrityStr":Ljava/lang/String;
    .end local v49    # "ipseclifetypeStr":Ljava/lang/String;
    .end local v50    # "ipseclifevalStr":Ljava/lang/String;
    .end local v51    # "iptypeStr":Ljava/lang/String;
    .end local v53    # "mobikevalStr":Ljava/lang/String;
    .end local v54    # "ownUriTypeStr":Ljava/lang/String;
    .end local v55    # "pcscfVendorAtStr":Ljava/lang/String;
    .end local v56    # "pfsvalStr":Ljava/lang/String;
    .end local v57    # "remoteuritypeStr":Ljava/lang/String;
    .end local v58    # "strPeriodicDpdTimer":Ljava/lang/String;
    .end local v59    # "tunnelmodeStr":Ljava/lang/String;
    :cond_12
    const-string/jumbo v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_0

    .line 241
    sget-object v3, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->DISABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    goto/16 :goto_0

    .line 248
    .restart local v4    # "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    .restart local v56    # "pfsvalStr":Ljava/lang/String;
    :cond_13
    const-string/jumbo v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_1

    .line 249
    sget-object v4, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    goto/16 :goto_1

    .line 256
    .restart local v5    # "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v51    # "iptypeStr":Ljava/lang/String;
    :cond_14
    const-string v60, "IPV6"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_15

    .line 257
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_2

    .line 259
    :cond_15
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_2

    .line 266
    .restart local v6    # "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .restart local v54    # "ownUriTypeStr":Ljava/lang/String;
    :cond_16
    const-string v60, "IPV6_ADDR"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_17

    .line 267
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 268
    :cond_17
    const-string v60, "FQDN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_18

    .line 269
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 270
    :cond_18
    const-string v60, "USER_FQDN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_19

    .line 271
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 272
    :cond_19
    const-string v60, "DN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1a

    .line 273
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 274
    :cond_1a
    const-string v60, "KEY_ID"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2

    .line 275
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 285
    .restart local v7    # "ownUri":Ljava/lang/String;
    .restart local v8    # "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .restart local v57    # "remoteuritypeStr":Ljava/lang/String;
    :cond_1b
    const-string v60, "IPV6_ADDR"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1c

    .line 286
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 287
    :cond_1c
    const-string v60, "FQDN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1d

    .line 288
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 289
    :cond_1d
    const-string v60, "USER_FQDN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1e

    .line 290
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 291
    :cond_1e
    const-string v60, "DN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1f

    .line 292
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 293
    :cond_1f
    const-string v60, "KEY_ID"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3

    .line 294
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 307
    .restart local v9    # "remoteUri":Ljava/lang/String;
    .restart local v10    # "apnType":Ljava/lang/String;
    .restart local v11    # "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .restart local v45    # "ipsecauthtypeStr":Ljava/lang/String;
    :cond_20
    const-string v60, "Pre Shared"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_21

    .line 308
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_5

    .line 309
    :cond_21
    const-string v60, "Public Key"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4

    .line 310
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_5

    .line 320
    .restart local v12    # "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .restart local v13    # "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .restart local v59    # "tunnelmodeStr":Ljava/lang/String;
    :cond_22
    const-string v60, "L2TP_OVER_IPSEC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5

    .line 321
    sget-object v13, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto/16 :goto_6

    .line 328
    .restart local v14    # "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .restart local v47    # "ipsecencryptiontypeStr":Ljava/lang/String;
    :cond_23
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_24

    .line 330
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 331
    :cond_24
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_25

    .line 333
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 334
    :cond_25
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_26

    .line 336
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 337
    :cond_26
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_27

    .line 339
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 340
    :cond_27
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_28

    .line 342
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 343
    :cond_28
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_29

    .line 345
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 346
    :cond_29
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2a

    .line 348
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 349
    :cond_2a
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2b

    .line 351
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 352
    :cond_2b
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2c

    .line 354
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 355
    :cond_2c
    const-string v60, "IPSEC_ENCRYPTION_BASIC"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2d

    .line 356
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 357
    :cond_2d
    const-string v60, "IPSEC_ENCRYPTION_ANY"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2e

    .line 358
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 359
    :cond_2e
    const-string v60, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2f

    .line 361
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 362
    :cond_2f
    const-string v60, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6

    .line 364
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 371
    .restart local v15    # "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .restart local v48    # "ipsecintegrityStr":Ljava/lang/String;
    :cond_30
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_31

    .line 372
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 373
    :cond_31
    const-string v60, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_32

    .line 374
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 375
    :cond_32
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_33

    .line 376
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 377
    :cond_33
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_34

    .line 378
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 379
    :cond_34
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_35

    .line 380
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 381
    :cond_35
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_36

    .line 382
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 383
    :cond_36
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_37

    .line 384
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 385
    :cond_37
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_38

    .line 386
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 387
    :cond_38
    const-string v60, "IPSEC_INTEGRITY_BASIC"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_39

    .line 388
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 389
    :cond_39
    const-string v60, "IPSEC_INTEGRITY_ANY"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3a

    .line 390
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 391
    :cond_3a
    const-string v60, "IPSEC_INTEGRITY_NULL"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3b

    .line 392
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 393
    :cond_3b
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3c

    .line 394
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 395
    :cond_3c
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7

    .line 396
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 403
    .restart local v16    # "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .restart local v46    # "ipsecdhgroupStr":Ljava/lang/String;
    :cond_3d
    const-string v60, "IPSEC_GROUP_MODP_1024"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3e

    .line 404
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 405
    :cond_3e
    const-string v60, "IPSEC_GROUP_MODP_1536"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3f

    .line 406
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 407
    :cond_3f
    const-string v60, "IPSEC_GROUP_MODP_2048"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_40

    .line 408
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 409
    :cond_40
    const-string v60, "IPSEC_GROUP_MODP_3072"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_41

    .line 410
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 411
    :cond_41
    const-string v60, "IPSEC_GROUP_MODP_4096"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_42

    .line 412
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 413
    :cond_42
    const-string v60, "IPSEC_GROUP_MODP_6144"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_43

    .line 414
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 415
    :cond_43
    const-string v60, "IPSEC_GROUP_MODP_8192"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_44

    .line 416
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 417
    :cond_44
    const-string v60, "IPSEC_GROUP_ECP_256"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_45

    .line 418
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 419
    :cond_45
    const-string v60, "IPSEC_GROUP_ECP_384"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_46

    .line 420
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 421
    :cond_46
    const-string v60, "IPSEC_GROUP_ECP_521"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_47

    .line 422
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 423
    :cond_47
    const-string v60, "IPSEC_GROUP_MODP_1024_160"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_48

    .line 424
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 425
    :cond_48
    const-string v60, "IPSEC_GROUP_MODP_2048_224"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_49

    .line 426
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 427
    :cond_49
    const-string v60, "IPSEC_GROUP_MODP_2048_256"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4a

    .line 428
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 429
    :cond_4a
    const-string v60, "IPSEC_GROUP_ECP_192"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4b

    .line 430
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 431
    :cond_4b
    const-string v60, "IPSEC_GROUP_ECP_224"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4c

    .line 432
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 433
    :cond_4c
    const-string v60, "IPSEC_GROUP_ANY"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4d

    .line 434
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 435
    :cond_4d
    const-string v60, "IPSEC_GROUP_ANY_OR_NONE"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8

    .line 436
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 443
    .restart local v17    # "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .restart local v49    # "ipseclifetypeStr":Ljava/lang/String;
    :cond_4e
    const-string v60, "IPSEC_LIFE_TYPE_KILOBYTES"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9

    .line 444
    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto/16 :goto_a

    .line 456
    .restart local v18    # "ipseclifeval":I
    .restart local v19    # "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .restart local v41    # "ikeversionStr":Ljava/lang/String;
    .restart local v50    # "ipseclifevalStr":Ljava/lang/String;
    :cond_4f
    const-string v60, "IKE_VERSION_2"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a

    .line 457
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto/16 :goto_b

    .line 464
    .restart local v20    # "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .restart local v37    # "ikeencryptionStr":Ljava/lang/String;
    :cond_50
    const-string v60, "IKE_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_51

    .line 465
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 466
    :cond_51
    const-string v60, "IKE_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_52

    .line 467
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 468
    :cond_52
    const-string v60, "IKE_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_53

    .line 469
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 470
    :cond_53
    const-string v60, "IKE_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_54

    .line 471
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 472
    :cond_54
    const-string v60, "IKE_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_55

    .line 473
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 474
    :cond_55
    const-string v60, "IKE_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_56

    .line 475
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 476
    :cond_56
    const-string v60, "IKE_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_57

    .line 477
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 478
    :cond_57
    const-string v60, "IKE_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_58

    .line 479
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 480
    :cond_58
    const-string v60, "IKE_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_59

    .line 481
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 482
    :cond_59
    const-string v60, "IKE_ENCRYPTION_BASIC"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5a

    .line 483
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 484
    :cond_5a
    const-string v60, "IKE_ENCRYPTION_ANY"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5b

    .line 485
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 486
    :cond_5b
    const-string v60, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5c

    .line 487
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 488
    :cond_5c
    const-string v60, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_b

    .line 489
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 496
    .restart local v21    # "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .restart local v38    # "ikeintegrityStr":Ljava/lang/String;
    :cond_5d
    const-string v60, "IKE_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5e

    .line 497
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 498
    :cond_5e
    const-string v60, "IKE_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5f

    .line 499
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 500
    :cond_5f
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_60

    .line 501
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 502
    :cond_60
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_61

    .line 503
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 504
    :cond_61
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_62

    .line 505
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 506
    :cond_62
    const-string v60, "IKE_INTEGRITY_BASIC"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_63

    .line 507
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 508
    :cond_63
    const-string v60, "IKE_INTEGRITY_ANY"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_64

    .line 509
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 510
    :cond_64
    const-string v60, "IKE_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_65

    .line 511
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 512
    :cond_65
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_c

    .line 513
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 520
    .restart local v22    # "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .restart local v35    # "ikedhgroupStr":Ljava/lang/String;
    :cond_66
    const-string v60, "IKE_GROUP_MODP_1024"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_67

    .line 521
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 522
    :cond_67
    const-string v60, "IKE_GROUP_MODP_1536"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_68

    .line 523
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 524
    :cond_68
    const-string v60, "IKE_GROUP_MODP_2048"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_69

    .line 525
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 526
    :cond_69
    const-string v60, "IKE_GROUP_MODP_3072"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6a

    .line 527
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 528
    :cond_6a
    const-string v60, "IKE_GROUP_MODP_4096"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6b

    .line 529
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 530
    :cond_6b
    const-string v60, "IKE_GROUP_MODP_6144"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6c

    .line 531
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 532
    :cond_6c
    const-string v60, "IKE_GROUP_MODP_8192"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6d

    .line 533
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 534
    :cond_6d
    const-string v60, "IKE_GROUP_ECP_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6e

    .line 535
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 536
    :cond_6e
    const-string v60, "IKE_GROUP_ECP_384"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6f

    .line 537
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 538
    :cond_6f
    const-string v60, "IKE_GROUP_ECP_521"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_70

    .line 539
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 540
    :cond_70
    const-string v60, "IKE_GROUP_MODP_1024_160"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_71

    .line 541
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 542
    :cond_71
    const-string v60, "IKE_GROUP_MODP_2048_224"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_72

    .line 543
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 544
    :cond_72
    const-string v60, "IKE_GROUP_MODP_2048_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_73

    .line 545
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 546
    :cond_73
    const-string v60, "IKE_GROUP_ECP_192"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_74

    .line 547
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 548
    :cond_74
    const-string v60, "IKE_GROUP_ECP_224"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_75

    .line 549
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 550
    :cond_75
    const-string v60, "IKE_GROUP_ANY"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_76

    .line 551
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 552
    :cond_76
    const-string v60, "IKE_GROUP_SUITE_B_GCM_128"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_77

    .line 553
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 554
    :cond_77
    const-string v60, "IKE_GROUP_SUITE_B_GCM_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_d

    .line 555
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 582
    .restart local v23    # "ikelife":I
    .restart local v24    # "ikewindow":I
    .restart local v25    # "ikeconntimeout":I
    .restart local v26    # "ikedpdtimeout":I
    .restart local v27    # "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .restart local v33    # "eaptypeStr":Ljava/lang/String;
    .restart local v34    # "ikeconntimeoutStr":Ljava/lang/String;
    .restart local v36    # "ikedpdtimeoutStr":Ljava/lang/String;
    .restart local v39    # "ikelifeStr":Ljava/lang/String;
    .restart local v42    # "ikewindowStr":Ljava/lang/String;
    :cond_78
    const-string v60, "EAP_METHOD_SIM"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_79

    .line 583
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_f

    .line 584
    :cond_79
    const-string v60, "EAP_METHOD_AKA"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7a

    .line 585
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_f

    .line 586
    :cond_7a
    const-string v60, "EAP_METHOD_MSCHAPV2"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_e

    .line 587
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_f

    .line 599
    .restart local v28    # "ikenatval":I
    .restart local v29    # "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .restart local v40    # "ikenatvalStr":Ljava/lang/String;
    .restart local v55    # "pcscfVendorAtStr":Ljava/lang/String;
    :cond_7b
    const-string v60, "P-CSCF-V4"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7c

    .line 600
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_10

    .line 601
    :cond_7c
    const-string v60, "P-CSCF-V6"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7d

    .line 602
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_10

    .line 603
    :cond_7d
    const-string v60, "P-CSCF-V4V6"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_f

    .line 604
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_10

    .line 611
    .restart local v31    # "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    .restart local v53    # "mobikevalStr":Ljava/lang/String;
    :cond_7e
    const-string/jumbo v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_10

    .line 612
    sget-object v31, Lcom/sec/epdg/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    goto/16 :goto_11

    .line 619
    .restart local v32    # "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    .restart local v43    # "imeiVendorAtStr":Ljava/lang/String;
    :cond_7f
    const-string v60, "DEVICEIMEI"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_11

    .line 620
    sget-object v32, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    goto/16 :goto_12
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgContentReader;
    .locals 2

    .prologue
    .line 105
    const-class v1, Lcom/sec/epdg/EpdgContentReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/sec/epdg/EpdgContentReader;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgContentReader;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    .line 108
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createIWlanApnList(Landroid/content/Context;)V
    .locals 14
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "iwlansettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "todos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x20

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "operatornumeric"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "connname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apnname"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "authtype"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "subnettype"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "userauthtype"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "pfs"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ownuritype"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ownidentity"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "remoteuritype"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "remoteidentity"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "tunneltype"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "ipsecencryption"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "ipsecintegrity"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "ipsecgroup"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "ipseclifetime"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ipseclifevalue"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "ikeversion"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "ikeencryption"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "ikeintegrity"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "ikegroup"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "ikeeaptype"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "ikelife"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "ikewindowsize"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "ikedpdtimeout"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ikeconnectiontimeout"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "ikenatvalue"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ikevirtualadaptername"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "vendorattribute"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "imei"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "mobike"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "periodicdpdtimer"

    aput-object v4, v2, v3

    .line 128
    .local v2, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 129
    .local v10, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 131
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_b

    .line 132
    const/4 v8, 0x0

    .line 133
    .local v8, "imsi":Ljava/lang/String;
    const/4 v11, -0x1

    .line 134
    .local v11, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 139
    :goto_0
    if-eqz v8, :cond_9

    const-string v3, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_9

    .line 140
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v8, "suppressed in user binary"

    .end local v8    # "imsi":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    .line 147
    :goto_1
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_7

    .line 149
    const-string v4, "[DBREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "suppressed in user binary"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    if-eqz v10, :cond_1

    const-string v3, "20404"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getGroupIdLevel1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "gid1":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v3, "BAE0000000000000"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const-string v10, "311480"

    .line 175
    .end local v7    # "gid1":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 177
    .local v9, "messagesCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 180
    .local v13, "useDummyDefault":Z
    if-eqz v9, :cond_c

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 181
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 182
    invoke-direct {p0, v9}, Lcom/sec/epdg/EpdgContentReader;->addIwlanApn(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 188
    :catch_0
    move-exception v6

    .line 189
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 190
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "iwlanapn settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    if-eqz v9, :cond_2

    .line 196
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    const/4 v9, 0x0

    .line 201
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_4
    const/4 v3, 0x1

    if-ne v13, v3, :cond_3

    .line 202
    const-string v10, "00101"

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 206
    if-eqz v9, :cond_f

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    .line 207
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 208
    invoke-direct {p0, v9}, Lcom/sec/epdg/EpdgContentReader;->addIwlanApn(Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 214
    :catch_1
    move-exception v6

    .line 215
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 216
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "iwlanapn settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    if-eqz v9, :cond_3

    .line 222
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    const/4 v9, 0x0

    .line 227
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_6
    monitor-exit p0

    return-void

    .line 137
    .end local v9    # "messagesCursor":Landroid/database/Cursor;
    .end local v13    # "useDummyDefault":Z
    .restart local v8    # "imsi":Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-static {p1, v11}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 145
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_6
    move-object v3, v10

    .line 149
    goto/16 :goto_2

    .line 152
    :cond_7
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v10, "suppressed in user binary"

    .end local v10    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "operatorNumeric is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v11    # "subscription":I
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 157
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "imsi":Ljava/lang/String;
    .restart local v10    # "operatorNumeric":Ljava/lang/String;
    .restart local v11    # "subscription":I
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    :try_start_8
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imsi is not correct, posting exception. Imsi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v8, "suppressed in user binary"

    .end local v8    # "imsi":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "imsi is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v11    # "subscription":I
    :cond_b
    const-string v3, "[DBREADER]"

    const-string v4, "Telephony manager instance is null, posting exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony manager instance is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 185
    .restart local v9    # "messagesCursor":Landroid/database/Cursor;
    .restart local v11    # "subscription":I
    .restart local v13    # "useDummyDefault":Z
    :cond_c
    :try_start_9
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 186
    const/4 v13, 0x1

    .line 195
    :cond_d
    if-eqz v9, :cond_2

    .line 196
    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 197
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 191
    :catch_2
    move-exception v6

    .line 192
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 193
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 195
    if-eqz v9, :cond_2

    .line 196
    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 195
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v3

    if-eqz v9, :cond_e

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    const/4 v9, 0x0

    :cond_e
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 211
    :cond_f
    :try_start_d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 217
    :catch_3
    move-exception v6

    .line 218
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 219
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 221
    if-eqz v9, :cond_3

    .line 222
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 221
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_10
    if-eqz v9, :cond_3

    .line 222
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 221
    :catchall_2
    move-exception v3

    if-eqz v9, :cond_11

    .line 222
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 v9, 0x0

    :cond_11
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

.method public getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .prologue
    .line 1090
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method public getIWlanApnList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized readEpdgSettings(Landroid/content/Context;)V
    .locals 14
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 745
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "iwlansettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "todos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "epdgsettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 748
    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x33

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "operatornumeric"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "smartwifirssia"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "smartwifirssib"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "smartwifirssic"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "smartwifirssiroveinwifionly"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "smartwifirssiroveoutwifionly"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "smartwifirssiroveinvoice"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "smartwifirsrp1"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "smartwifirsrp2"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "smartwifirsrp3"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "smartwificdmarssi"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "smartpktlosspercent"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "threshold4grovein"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "threshold4groveout"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "threshold3grovein"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "threshold3groveout"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "threshold2grovein"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "threshold2groveout"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "sysseltimer"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "tepdgltetimer"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "tepdg1xtimer"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "tepdg1xScantimer"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "hodelaytimer"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "wifirssiintentdelaytimer"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "wifiipconfigtimer"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "idimac"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "idiimsi"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "retry_enabled_for_always_on_apn"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "smartwifitimer"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "internet_pdn_keep_alive_timer"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "epdgserverip"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "dynamic_fqdn"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "dynamic_userfqdn"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "smart_wifi_ans_integration"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "smart_wifi_rtcp_integration"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "broadcast_ho_result"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "attach_pdn"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "alwayson_apntype"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "vowifi_pref"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "ondemand_pdn_handoff"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "is_throttle_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "pcscfv4vendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "pcscfv6vendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "imeivendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "netinterfacenum"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "emergency_apntype"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "is_dpd_allowed_in_connected_mode"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "is_ipv6_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "is_ipv6_preferred"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "certi_path"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "is_using_certi"

    aput-object v4, v2, v3

    .line 764
    .local v2, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 765
    .local v10, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 767
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_b

    .line 768
    const/4 v8, 0x0

    .line 769
    .local v8, "imsi":Ljava/lang/String;
    const/4 v11, -0x1

    .line 770
    .local v11, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 771
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 775
    :goto_0
    if-eqz v8, :cond_9

    const-string v3, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_9

    .line 776
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v8, "suppressed in user binary"

    .end local v8    # "imsi":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 779
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    .line 783
    :goto_1
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_7

    .line 785
    const-string v4, "[DBREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "suppressed in user binary"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 803
    if-eqz v10, :cond_1

    const-string v3, "20404"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getGroupIdLevel1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 805
    .local v7, "gid1":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v3, "BAE0000000000000"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    const-string v10, "311480"

    .line 811
    .end local v7    # "gid1":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 813
    .local v9, "messagesCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 816
    .local v13, "useDummyDefault":Z
    if-eqz v9, :cond_c

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 817
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 818
    invoke-direct {p0, v9}, Lcom/sec/epdg/EpdgContentReader;->addEpdgSetting(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 824
    :catch_0
    move-exception v6

    .line 825
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 826
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "epdg settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 831
    if-eqz v9, :cond_2

    .line 832
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 833
    const/4 v9, 0x0

    .line 837
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_4
    const/4 v3, 0x1

    if-ne v13, v3, :cond_3

    .line 838
    const-string v10, "00101"

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 842
    if-eqz v9, :cond_f

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    .line 843
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 844
    invoke-direct {p0, v9}, Lcom/sec/epdg/EpdgContentReader;->addEpdgSetting(Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 850
    :catch_1
    move-exception v6

    .line 851
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 852
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "epdg settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 857
    if-eqz v9, :cond_3

    .line 858
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 859
    const/4 v9, 0x0

    .line 863
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_6
    monitor-exit p0

    return-void

    .line 773
    .end local v9    # "messagesCursor":Landroid/database/Cursor;
    .end local v13    # "useDummyDefault":Z
    .restart local v8    # "imsi":Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-static {p1, v11}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 781
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_6
    move-object v3, v10

    .line 785
    goto/16 :goto_2

    .line 788
    :cond_7
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v10, "suppressed in user binary"

    .end local v10    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "operatorNumeric is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 745
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v11    # "subscription":I
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 793
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "imsi":Ljava/lang/String;
    .restart local v10    # "operatorNumeric":Ljava/lang/String;
    .restart local v11    # "subscription":I
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    :try_start_8
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imsi is not correct, posting exception. Imsi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v8, "suppressed in user binary"

    .end local v8    # "imsi":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "imsi is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 798
    .end local v11    # "subscription":I
    :cond_b
    const-string v3, "[DBREADER]"

    const-string v4, "Telephony manager instance is null, posting exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony manager instance is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 821
    .restart local v9    # "messagesCursor":Landroid/database/Cursor;
    .restart local v11    # "subscription":I
    .restart local v13    # "useDummyDefault":Z
    :cond_c
    :try_start_9
    const-string v3, "[DBREADER]"

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 822
    const/4 v13, 0x1

    .line 831
    :cond_d
    if-eqz v9, :cond_2

    .line 832
    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 833
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 827
    :catch_2
    move-exception v6

    .line 828
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 829
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 831
    if-eqz v9, :cond_2

    .line 832
    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 833
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 831
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v3

    if-eqz v9, :cond_e

    .line 832
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 833
    const/4 v9, 0x0

    :cond_e
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 847
    :cond_f
    :try_start_d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 853
    :catch_3
    move-exception v6

    .line 854
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 855
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 857
    if-eqz v9, :cond_3

    .line 858
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 859
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 857
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_10
    if-eqz v9, :cond_3

    .line 858
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 859
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 857
    :catchall_2
    move-exception v3

    if-eqz v9, :cond_11

    .line 858
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 859
    const/4 v9, 0x0

    :cond_11
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method
